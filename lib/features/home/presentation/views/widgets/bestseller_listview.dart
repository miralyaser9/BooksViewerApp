import 'package:bookapp/constants.dart';
import 'package:bookapp/core/widgets/custom_error.dart';
import 'package:bookapp/features/home/presentation/manager/newest_books_cubit/newest_books_cibit.dart';
import 'package:bookapp/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksCibitSuccess){
        return Padding(
          padding: kHorizontalPadding30,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,

            itemBuilder: (context, index) {
              return  BestSellerItem(bookModel: state.books[index],);
            }
            ,
            itemCount: state.books.length),
        );
        }
        else if(state is NewestBooksCibitFailure){
          return CustomErrorPage(errMessage: state.errMessage);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}