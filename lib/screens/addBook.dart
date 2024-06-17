import 'package:flutter/material.dart';
import 'package:project/functions/dbFunctions.dart';
import 'package:project/model/bookModel.dart';

class AddBook extends StatelessWidget {
   AddBook({super.key});
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _ratingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: Column(
      children: [
        TextFormField(
          controller: _titleController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Book Title"
          ),
        ),
        SizedBox(height: 10,),
         TextFormField(
          controller: _authorController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Author Name"
          ),
        ),
        SizedBox(height: 10,),
         TextFormField(
          controller: _ratingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Add Rating"
          ),
        ),
        SizedBox(height: 20,),

        MaterialButton(
          color: Colors.green,
          onPressed: (){
            handleAddBook();
          },child: Text("Add Book"),)
        
      ],
    ),
    );
  }
  void handleAddBook(){
    final _title = _titleController.text;
    final _author = _authorController.text;
    final _rating = _ratingController.text;

    if(_title.isEmpty||_author.isEmpty||_rating.isEmpty){
      return;
    }
   
    final _bookModel=BookModel(title: _title, author: _author, rating: _rating);
    addBook(_bookModel);
    _titleController.clear();
    _authorController.clear();
    _ratingController.clear();

    
  }
}