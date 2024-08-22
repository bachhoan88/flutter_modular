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
generate_sources_all:
	@find . -name pubspec.yaml -exec echo "### Generating sources for {}" \; \
	-execdir flutter pub run build_runner build --delete-conflicting-outputs \;

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
    	-execdir flutter packages upgrade --major-versions \;

# Runs `flutter clean` in all the project packages.
clean_all:
	@find . -name pubspec.yaml -exec echo "### Cleaning {}" \; \
	-execdir flutter clean \;

.PHONY: pub_get pub_get_all generate_sources_all analyze_all test_all upgrade_libs clean_all
