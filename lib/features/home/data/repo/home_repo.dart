
import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
   Future <Either <Failure,List<BookModel>>>fetchNewestBooks();
   Future <Either <Failure,List<BookModel>>> fetchFeaturedBooks();
   Future <Either <Failure,List<BookModel>>> fetchSimilarBooks({required String category});
   Future <Either <Failure,List<BookModel>>> fetchSearchedBooks({required String category});
}