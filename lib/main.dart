import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'appbar', //앱자체 이름
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),

      home: Mypage(),
    );
  }

}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("appbar"),
        elevation: 0,
        actions: [ // 앱바 오른쪽
          IconButton(onPressed: (){
            print('shopping');
          }, icon: Icon(Icons.add_shopping_cart)
          ),
          IconButton(onPressed: (){
            print('search');
          }, icon: Icon(Icons.search)
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(//햄버거 + 사이드바
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('asset/ppp.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/www.jpg'),
                ),

              ],

              accountEmail: Text('email'),
              accountName: Text('name'),
              onDetailsPressed: (){
                print('arrow click');
              },
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.black,),
              title: Text('home'),
              onTap: (){
                print("home");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.black,),
              title: Text('qna'),
              onTap: (){
                print("qna");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.black,),
              title: Text('settings'),
              onTap: (){
                print("settings");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

}