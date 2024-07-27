import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts package
import 'package:expense_tracker/colors/color.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          // this part right here is for the spent item
          ListTile(
            onTap: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            tileColor: Colors.white,
            minTileHeight: 100,
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: purple, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  Icons.shop,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              padding: EdgeInsets.all(8),
            ),
            title: Column(
              children: [
                Container(
                  width: 230,
                  child: Text(
                    "Coffee",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(right: 30),
                  child: Text(
                    "Description of what you ha... ",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            trailing: Text(
              "3 \$",
              style: GoogleFonts.roboto(
                  textStyle:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
