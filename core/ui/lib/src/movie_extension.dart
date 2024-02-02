import 'package:core_model/models.dart';

extension MovieExtension on String {
  String get imageW500 => 'https://image.tmdb.org/t/p/w500$this';

  String get year => (length >= 4) ? substring(0, 4) : '';
}

extension MovieCountryExtension on List<Country> {
  String get countries => () {
        if (length > 0) {
          skip(1).fold(first.code ?? '', (previousValue, element) {
            return '$previousValue, ${element.code}';
          });
          return '';
        } else {
          return '';
        }
      }();
}

extension MovieGenresExtension on List<Genre> {
  String get categories => () {
        skip(1).fold(first.name ?? '', (previousValue, element) {
          return '$previousValue, ${element.name}';
        });
        return '';
      }();
}
