PUBSPEC_YAML = $(shell find . -name pubspec.yaml)
PUBSPEC_LOCK = $(PUBSPEC_YAML:.yaml=.lock)

# Runs `flutter pub get` in the packages that `pubspec.yaml` was modified.
pub_get: $(PUBSPEC_LOCK)

%pubspec.lock: %pubspec.yaml
	@cd $(@D) && \
	flutter pub get

# Runs `flutter pub get` in all the project packages.
pub_get_all:
	@find . -name pubspec.yaml -exec echo "### Getting packages for {}" \; \
	-execdir flutter pub get \;

# Runs `flutter pub run build_runner build` in all the project packages.
# Covers freezed / json_serializable / retrofit / riverpod. Asset code
# (FlutterGen) is generated separately via `make gen_assets`.
generate_sources_all:
	@find . -name pubspec.yaml -exec echo "### Generating sources for {}" \; \
	-execdir flutter pub run build_runner build --delete-conflicting-outputs \;

# Generates FlutterGen asset code via the standalone CLI, decoupled from
# build_runner (the build_runner integration is fragile). Run when assets or
# fonts change. Reads the `flutter_gen:` config from each package's pubspec.
gen_assets:
	@dart pub global activate flutter_gen
	@find . -name pubspec.yaml -not -path '*/build/*' \
	-execdir sh -c 'grep -q "^flutter_gen:" pubspec.yaml && echo "### FlutterGen for $$(pwd)" && dart pub global run flutter_gen -c pubspec.yaml || true' \;

# Run `flutter analyze` in all project package
analyze_all:
	@find . -name pubspec.yaml -exec echo "### Analyze sources for {}" \; \
    	-execdir flutter analyze \;

# Runs `flutter test` in all the project packages.
test_all:
	@find . -name test -exec echo "### Run unit test for {}" \; \
			-execdir flutter test --coverage \; \
        	-execdir lcov --remove coverage/lcov.info \
        	-o coverage/new_lcov.info \
        	--ignore-errors unused \
				'*_page.*' \
				'*/component/*' \
				'*_view.*' \
				'*_view_holder.*' \
				'*/di/*' \; \
        	-execdir genhtml coverage/new_lcov.info --output=coverage \;

upgrade_libs:
	@find . -name pubspec.yaml -exec echo "### Upgrade libs {}" \; \
    	-execdir flutter pub outdated \; \
    	-execdir flutter pub upgrade --dry-run \;

# Runs `flutter clean` in all the project packages.
clean_all:
	@find . -name pubspec.yaml -exec echo "### Cleaning {}" \; \
	-execdir flutter clean \;

.PHONY: pub_get pub_get_all generate_sources_all gen_assets analyze_all test_all upgrade_libs clean_all
