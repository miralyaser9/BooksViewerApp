import 'package:bookapp/core/widgets/custom_error.dart';
import 'package:bookapp/core/widgets/custom_loading_indicator.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key,required}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height*0.18;
    return  BlocBuilder<SimilarBooksCubit, SimilarBooksState>(

  builder: (context, state) {
    if(state is SimilarBooksSuccess){
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? '',),
          );
        }
        ,itemCount: 10,
        scrollDirection: Axis.horizontal,),
    );}
    else if(state is SimilarBooksFailure){
      return CustomErrorPage(errMessage: state.errMessgae);
    }
    else{
      return const CustomLoadingIndicator();
    }
  },
);
  }
}