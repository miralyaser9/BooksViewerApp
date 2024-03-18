import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Can Also Like",style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
        const SizedBox(height: 16,),
        const SimilarBooksListView(),
      ],
    );
  }
}