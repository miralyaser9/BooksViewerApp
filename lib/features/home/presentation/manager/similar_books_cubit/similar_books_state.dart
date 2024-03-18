part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  SimilarBooksSuccess(this.books);
  final List<BookModel> books;
}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksFailure extends SimilarBooksState {
  SimilarBooksFailure(this.errMessgae);
  final String errMessgae;
}
