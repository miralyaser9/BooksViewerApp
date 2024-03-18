import 'package:bookapp/core/utilites/app_routes.dart';
import 'package:bookapp/core/widgets/custom_error.dart';
import 'package:bookapp/core/widgets/custom_loading_indicator.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double height=MediaQuery.of(context).size.height*0.3;

    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksStates>(
      builder: (BuildContext context, state) {
      if(state is FeaturedBooksSuccess){
        return SizedBox(
          height: height,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRoutes.kBookDetails,extra: state.Books[index]);

                  },
                    child: CustomBookImage(imageUrl: state.Books[index].volumeInfo.imageLinks?.thumbnail??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeoPU6B_00Vks3N7Z9kBJyyr4rEKfsGXGeTmva1sq6vA&s',)),
              );
            }
            ,itemCount: state.Books.length,
            scrollDirection: Axis.horizontal,),
        );
      }
        if(state is FeaturedBooksFailure){
          return CustomErrorPage(errMessage: state.errMessage);
        }
        else{
          return const CustomLoadingIndicator();

        }
      },


    );
  }
}