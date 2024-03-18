import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/core/utilites/api_services.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
   const HomeRepoImpl(this.apiServices);

  final ApiServices apiServices;
  @override

  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
  try{
    var data=await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookModel>booksList=[];
    for( var item in data['items']){
      booksList.add(BookModel.fromJson(item));

    }
    return right(booksList);

  }
   catch(e){
    if(e is DioError) {
      return left(ServerFailure.fromDioError(e));
    }
    return left(ServerFailure(e.toString()));

  }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
    try{
      var data=await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel>booksList=[];
      for( var item in data['items']){
        booksList.add(BookModel.fromJson(item));

      }
      return right(booksList);

    }
    catch(e){
      if(e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try{
      var data=await apiServices.get(endPoint:  'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel>booksList=[];
      for( var item in data['items']){
        booksList.add(BookModel.fromJson(item));

      }
      return right(booksList);

    }
    catch(e){
      if(e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({required String category})async {
    try{
      var data=await apiServices.get(endPoint:  'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$category');
      List<BookModel>booksList=[];
      for( var item in data['items']){
        booksList.add(BookModel.fromJson(item));

      }
      return right(booksList);

    }
    catch(e){
      if(e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }
  }




