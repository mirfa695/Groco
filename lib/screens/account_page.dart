import 'package:flutter/material.dart';
import 'package:groco/provider_helper/account_provider.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
   AccountPage({required this.id,Key? key}) : super(key: key);
  String id;
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AccountProvider>().getUser(widget.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AccountProvider>(builder: (BuildContext context, AccountProvider value, Widget? child) {
        return ListTile(title: Text(value.user!.name!),);
      },),
    );
  }
}
