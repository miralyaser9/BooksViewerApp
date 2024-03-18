import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
    var result=await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(SimilarBooksFailure(failure.errMessage)), (books) => emit(SimilarBooksSuccess(books)));
  }

}
