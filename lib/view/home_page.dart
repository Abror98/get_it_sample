
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it_sample/domain/meme_controller.dart';
import 'package:get_it_sample/domain/models.dart';
import 'package:get_it_sample/locator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Meme visibleMeme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: visibleMeme != null ? Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Category ${visibleMeme.category}", style: TextStyle(fontSize: 36)),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.network(visibleMeme.image),
                  ),
                  SizedBox(height: 8),
                  Text("Caption: ${visibleMeme.caption}")
                ],
              ),
            ),
          ),
        ) : Center(child: Text("No Meme loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.skip_next),
        onPressed: () async {
          Meme meme = await getIt<MemeDomainController>().getNextMeme();
          setState(() {
            visibleMeme = meme;
          });         // locator<MyService>().myServiceMethod;
        },
      ),
    );
  }
}
