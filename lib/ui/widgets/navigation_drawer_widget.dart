import 'package:flutter/material.dart';

import '../home_page.dart';
import '../upcoming_chests_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildItems(context)
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue.shade700,
    child: InkWell(
      onTap: () { },
      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage('https://drive.google.com/file/d/1vBXaJwEFvzlvwglyHYtDPa4RAlULX4Rh/view'),
            ),
            SizedBox(height: 12),
            Text('Name', style: TextStyle(fontSize: 28),),
            Text('Email', style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
    ),
  );

  Widget buildItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(8),
    child: Wrap(
      runSpacing: 12,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage())),
        ),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Perfil'),
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage())),
        ),
        const Divider(color: Colors.black54),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Confres'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UpcomingChests()));
          },
        )
      ],
    ),
  );
}
