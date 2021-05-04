import 'package:casi_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class WarningsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Avisos",
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Aulas presenciais"),
                subtitle: Text("isso é só um teste ainda"),
                trailing: IconButton(
                  icon: Icon(Icons.remove_red_eye_sharp),
                  onPressed: () => {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
