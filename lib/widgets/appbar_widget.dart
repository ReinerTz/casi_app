import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final List<Widget> actions;

  AppBarWidget({this.title = "", this.actions})
      : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      actions: this.actions,
      title: Text(
        this.title,
        style: GoogleFonts.roboto(),
      ),
      centerTitle: this.title.isEmpty,
    );
  }
}
