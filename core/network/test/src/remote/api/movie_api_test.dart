import 'dart:convert';

import 'package:core_network/networks.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_api_test.mocks.dart';

@GenerateMocks([HttpClientAdapter])
void main() {
  final dio = Dio();
  late MovieApi movieApi;
  late MockHttpClientAdapter clientAdapter;

  setUp(() {
    clientAdapter = MockHttpClientAdapter();
    dio.httpClientAdapter = clientAdapter;
    movieApi = MovieApi(dio);
  });

  group('Test api fetch movies /{type}', () {
    test('fetch movie success', () async {
      const apiKey = 'api_key';
      final response = jsonEncode(
        {
          "page": 1,
          "results": [
            {
              "adult": false,
              "backdrop_path": "/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg",
              "genre_ids": [28, 12, 14, 878],
              "id": 181812,
              "original_language": "en",
              "original_title": "Star Wars: The Rise of Skywalker",
              "overview":
                  "The surviving members of the resistance face the First Order once again, and the legendary conflict between the Jedi and the Sith reaches its peak bringing the Skywalker saga to its end.",
              "popularity": 35.333,
              "poster_path": "/db32LaOibwEliAmSL2jjDF6oDdj.jpg",
              "release_date": "2019-12-18",
              "title": "Star Wars: The Rise of Skywalker",
              "video": false,
              "vote_average": 6.8,
              "vote_count": 3067
            }
          ],
          "total_pages": 1000,
          "total_results": 20000
        },
      );
      final httpResponse = ResponseBody.fromString(response, 200, headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      });

      when(clientAdapter.fetch(any, any, any)).thenAnswer((_) async => httpResponse);

      final result = await movieApi.fetchMovies('popular', apiKey);

      expect(result.movies?.length, 1);
      expect(result.movies?.first.id, 181812);
    });
  });
}
