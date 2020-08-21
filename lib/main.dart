import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: faqPage()
  ));
}

class faqPage extends StatefulWidget {
  @override
  _faqPageState createState() => _faqPageState();
}

class _faqPageState extends State<faqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FAQ PAGE',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder:(BuildContext context,int) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ExpansionTile(
                  title: Text('Question ?',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text('Answer to the following question',
                        style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            );
          }),
    );
  }
}
