import 'package:core_model/models.dart';

Collection createCollection = const Collection(
  id: 1,
  name: 'Name',
  posterPath: '',
  backdropPath: '',
);

Company createCompany = const Company(
  id: 1,
  name: 'Name',
  logoPath: '',
  originalCountry: '',
);

Country createCountry = const Country(
  name: 'Name',
  code: 'n',
);

Genre createGenre = const Genre(
  id: 1,
  name: 'Fantasy',
);

Language createLanguage = const Language(
  name: 'En',
  countryCode: 'en',
  engName: 'Name',
);

MovieInfo createMovieInfo = MovieInfo(
  adult: false,
  backdropPath: '',
  budget: 1,
  homepage: 'home-page',
  id: 1,
  imdbId: '123',
  originalTitle: 'Title',
  originalLanguage: 'En',
  overview: 'Overview',
  popularity: 4.0,
  posterPath: 'poster',
  releaseDate: '2020-12-12',
  revenue: 12345,
  runtime: 123,
  tagline: 'A new era of wonder begins.',
  title: 'Wonder Woman 1984',
  video: false,
  voteCount: 1234,
  voteAverage: 4.0,
  genres: List.of([createGenre]),
  countries: List.of([createCountry]),
  companies: List.of([createCompany]),
  collection: createCollection,
  languages: List.of([createLanguage]),
);
