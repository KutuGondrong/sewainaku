import 'package:flutter/material.dart';
import 'package:sewain_aku/utils/color.dart';
import 'package:sewain_aku/views/components/body.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: primaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.drag_handle),
      ),
    );
  }
}

