import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utilites/app_routes.dart';
import 'package:bookapp/core/utilites/assets.dart';
import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetails,extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
             CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? '',),
              const SizedBox(width: 30,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child:  Text(bookModel.volumeInfo.title!,style: Styles.textStyle20.copyWith(fontFamily: kFontFamilySpectra),
                          maxLines: 2,overflow: TextOverflow.ellipsis
                      ),
                    ),
                    const SizedBox(height: 3,),
                     Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle14,),
                    const SizedBox(height: 3,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Free",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                       BookRating(rating: bookModel.volumeInfo.averageRating?? 0, count: bookModel.volumeInfo.ratingsCount??0,),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

