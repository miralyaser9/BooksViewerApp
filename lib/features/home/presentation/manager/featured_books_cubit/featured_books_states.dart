import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable{
  const FeaturedBooksStates();
  @override
  List<Object?> get props => throw UnimplementedError();
}
class FeaturedBooksIntial extends FeaturedBooksStates{}
class FeaturedBooksLoading extends FeaturedBooksStates{}

class FeaturedBooksFailure extends FeaturedBooksStates{
   const FeaturedBooksFailure(this.errMessage);
  final String errMessage;
}
class FeaturedBooksSuccess extends FeaturedBooksStates{
  final List<BookModel> Books;
 const FeaturedBooksSuccess(this.Books);
}



