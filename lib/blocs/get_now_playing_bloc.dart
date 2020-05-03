import 'package:flutterblocmovies/models/movie_response.dart';
import 'package:flutterblocmovies/repositories/repository.dart';
import 'package:rxdart/rxdart.dart';

class NowPlayingListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();

  getMovies() async {
    MovieResponse response = await _repository.getPlayingMovies();
    _subject.sink.add(response);
  }

  BehaviorSubject<MovieResponse> get subject => _subject;

  dispose() {
    _subject.close();
  }
}

final nowPlayingMoviesBloc = NowPlayingListBloc();
