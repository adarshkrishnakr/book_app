import 'package:flutter/material.dart';
import 'package:project/functions/dbFunctions.dart';
import 'package:project/model/bookModel.dart';


class ListBook extends StatelessWidget {
  const ListBook({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bookListNotifier,
      builder: (BuildContext ctx, List<BookModel> bookList, Widget? child){
        return ListView.separated(itemBuilder: (context,index){
          final bookData = bookList[index];
        return ListTile(
          leading: CircleAvatar(
            child: 
                
                Text(bookData.rating)
              
            ),
          
          title: Text(bookData.title),
          subtitle: Text(bookData.author),
        );
      }, separatorBuilder: (context,index){
        return Divider();
      }, itemCount: bookList.length);

      },
      
    );
  }
}