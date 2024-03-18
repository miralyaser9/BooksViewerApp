import 'package:bookapp/core/utilites/service_locator.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/data/repo/homerepo_implmentation.dart';
import 'package:bookapp/features/home/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookapp/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookapp/features/home/presentation/views/book_details_view.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/search/presentation/views/searching_view.dart';

import 'package:bookapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes{

  static const kHomeView='/homeView';
  static const kBookDetails='/bookDetails';
  static const kSearchView='/searchView';

  static final router=GoRouter(
      routes: [

        GoRoute(path: '/',builder: (context,state)=> const SplashView()),
        GoRoute(path: kHomeView,builder: (context,state)=> const HomeView()),

        GoRoute(path: kBookDetails,builder: (context,state)=> BlocProvider(
            create: ( context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(bookModel: state.extra as BookModel,)
        )
        ),

        GoRoute(path: kSearchView,builder: (context,state)=> BlocProvider(
            create: (BuildContext context)=>SearchedBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
            child: const SearchView())),

      ]);
}