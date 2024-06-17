import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/model/bookModel.dart';

ValueNotifier <List<BookModel>> bookListNotifier = ValueNotifier([]);

Future<void> addBook(BookModel value)async{
  
  final bookDb= await Hive.openBox<BookModel>('book_db');
  await bookDb.add(value);
  bookListNotifier.value.add(value);
  
  bookListNotifier.notifyListeners();

}

Future<void> getAllBooks() async{
  final bookDb = await Hive.openBox<BookModel>('book_db');
  bookListNotifier.value.clear();
  bookListNotifier.value.addAll(bookDb.values);
  bookListNotifier.notifyListeners();
}