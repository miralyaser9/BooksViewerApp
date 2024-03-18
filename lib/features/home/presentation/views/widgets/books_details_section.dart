import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key,required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*0.2 ),
          child:  CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??"",),
        ),
        const SizedBox(height: 30,),
        Text(bookModel.volumeInfo.title??"",style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        const SizedBox(height: 6,),
        Opacity(
            opacity: 0.7,
            child: Text(bookModel.volumeInfo.authors?[0]??"",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),)
        ),
        const SizedBox(height: 14,),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating??0,
          count: bookModel.volumeInfo.ratingsCount??0,),
        const SizedBox(height: 22),
         BookAction(bookModel: bookModel,),
      ],
    );
  }
}