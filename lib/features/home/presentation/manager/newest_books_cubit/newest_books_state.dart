


import 'package:bookapp/features/home/data/models/book_model.dart';

abstract class NewestBooksState {}

class NewestBooksCibitInitial extends NewestBooksState {}
class NewestBooksCibitLoading extends NewestBooksState {}
class NewestBooksCibitSuccess extends NewestBooksState {
  NewestBooksCibitSuccess(this.books);
  List<BookModel> books;
}
class NewestBooksCibitFailure extends NewestBooksState {
  NewestBooksCibitFailure(this.errMessage);
   final String errMessage;
}
