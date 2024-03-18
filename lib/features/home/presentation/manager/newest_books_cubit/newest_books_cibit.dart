import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:bookapp/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';



class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksCibitInitial());
  final HomeRepo homeRepo;


  Future<void> fetchNewestBooks()async{
    emit(NewestBooksCibitLoading());
    var result=await homeRepo.fetchNewestBooks();
    result.fold((failure) => emit(NewestBooksCibitFailure(failure.errMessage)), (books) => emit(NewestBooksCibitSuccess(books)));
  }

}
