import 'package:bookapp/constants.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';

import 'package:bookapp/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:bookapp/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bookapp/features/home/presentation/views/widgets/similar_bookslistview_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        SliverFillRemaining(

          hasScrollBody: false,
          child:  Padding(
            padding: kHorizontalPadding30,
            child: Column(
              children: [
                const BooksDetailsAppBar(),
                BookDetailsSection(bookModel:bookModel ,),

                const Expanded(
                    child: SizedBox(height: 30,)),
                const SimilarBooksSection(),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        )
      ],
    );
  }
}








