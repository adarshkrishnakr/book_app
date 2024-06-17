
import 'package:hive/hive.dart';
part 'bookModel.g.dart';

@HiveType(typeId: 1)
class BookModel{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String author;
  @HiveField(2)
  final String rating;
  BookModel({required this.title,required this.author,required this.rating});
}