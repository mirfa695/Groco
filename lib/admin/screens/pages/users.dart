import 'package:flutter/material.dart';
import 'package:groco/provider_helper/admin_provide.dart';
import 'package:provider/provider.dart';

class UsersPage extends StatelessWidget {
   UsersPage({Key? key}) : super(key: key);
  List users=[{
    'name':'Raju',
    'email':'raju@gmail.com',
    'phno':7877990
  },{
    'name':'Radha',
    'email':'radha@gmail.com',
    'phno':78845893
  }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: context.read<AdminProvider>().Users(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context,int index){
                return Card(
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.topRight,
                            child: Text('#$index',style: TextStyle(fontWeight: FontWeight.bold),)),
                        Text('Name:  ${snapshot.data![index].name}'),
                        Text('Email:  ${snapshot.data![index].email}'),
                        Text('Phno:   ${snapshot.data![index].phno}')
                      ],),
                  ),
                );
              });
        }else if(snapshot.data==null){return Center(child: CircularProgressIndicator(color: Colors.black,));}
        else{return Center(child: Text('error'));}
        }
      ),
    );
  }
}
