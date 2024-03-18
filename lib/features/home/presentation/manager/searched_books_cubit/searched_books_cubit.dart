import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit({
    required this.homeRepo,
  }) : super(SearchedBooksInitial());
   final HomeRepo homeRepo;


  Future<void> fetchSearchedBooks({required String category})async{
    emit(SearchedBooksLoading());
    var result=await homeRepo.fetchSearchedBooks(category: category);

    result.fold((failure) => emit(SearchedBooksFailure(failure.errMessage)), (books) => emit(SearchedBooksSuccess(books)));
  }
}
