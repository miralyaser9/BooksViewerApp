import 'package:bookapp/core/utilites/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
   BookRating({Key? key,this.mainAxisAlignment=MainAxisAlignment.start,required this.rating,required this.count}) : super(key: key);

  MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,

      children:  [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffffdd4f),size: 14,),
        const SizedBox(width: 6.3,),
         Text(rating.toString(),style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Opacity(opacity: 0.5,
            child: Text(count.toString(),style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600))),
      ],
    );
  }
}