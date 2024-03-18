import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksIntial());
   final HomeRepo homeRepo;


  Future<void> fetchFearturedBooks()async{
    emit(FeaturedBooksLoading());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.errMessage)), (books) => emit(FeaturedBooksSuccess(books)));
  }

}