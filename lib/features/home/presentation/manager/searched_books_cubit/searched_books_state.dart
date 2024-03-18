part of 'searched_books_cubit.dart';

@immutable
abstract class SearchedBooksState {}

class SearchedBooksInitial extends SearchedBooksState {}
class SearchedBooksLoading extends SearchedBooksState {}
class SearchedBooksSuccess extends SearchedBooksState {
  SearchedBooksSuccess(this.books);
  final List<BookModel> books;
}
class SearchedBooksFailure extends SearchedBooksState {
  SearchedBooksFailure(this.errMessage);
  final String errMessage;
}
