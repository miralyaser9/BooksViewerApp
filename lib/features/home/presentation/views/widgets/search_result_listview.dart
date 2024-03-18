import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/core/widgets/custom_error.dart';
import 'package:bookapp/core/widgets/custom_loading_indicator.dart';
import 'package:bookapp/features/home/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
       if(state is SearchedBooksSuccess){
         return ListView.builder(
           shrinkWrap: true,
           padding: EdgeInsets.zero,

           itemBuilder: (context, index) {
             return  BestSellerItem(bookModel: state.books[index],);
           }
           , itemCount: state.books.length,);
       }
       else if(state is SearchedBooksFailure){
         return CustomErrorPage(errMessage: state.errMessage);
       }
       else {
        return Center(child: Lottie.asset('assets/images/Animation - 1710798285599.json'));
       }
      },
    );
  }
}