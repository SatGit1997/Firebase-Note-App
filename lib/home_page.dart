import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_note_app/decor/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  /// firebase firestore initialized
  FirebaseFirestore ff = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:  AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot<Map<String,dynamic>>>(
        future: ff.collection('notes').get(),
        builder: (_,snap){
          if(snap.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snap.hasError){
            return Center(
              child: Text('Error: ${snap.hasError}'),
            );
          }
          if(snap.hasData){
            return ListView.builder(itemBuilder: (_,index){
              return ListTile(
                title: Text(snap.data!.docs[index].data()['title']),
                subtitle: Text(snap.data!.docs[index].data()['desc']),
              );

            },itemCount: snap.data!.docs.length,);

          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            enableDrag: false,
            isDismissible: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(31))
            ),
              context: context, builder: (_){
            return Container(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Add Note'),
                    mSpacer(),
                    TextField(controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Enter title',
                        label: Text('Title'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                        ),
                      )
                    ),
                    mSpacer(),
                    TextField(
                      controller: descController,
                      minLines: 4,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Enter Desc',
                        label: Text('Desc'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                        ),
                      )
                    ),
                    mSpacer(mHeight: 30),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: OutlinedButton(
                              onPressed: (){

                                ff.collection('Notes').add({
                                  'title': 'Bike',
                                  'desc': 'Servicing'
                                });


                                Navigator.pop(context);
                                }, child: Text('Add')),
                        ),
                        mSpacer(),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: OutlinedButton(
                              onPressed: (){
                                Navigator.pop(context);
                              }, child: Text('Cancel')),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
        }
          ,child: Text('add'),
      ),
    );
  }
}