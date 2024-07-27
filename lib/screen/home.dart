import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts package
import 'package:expense_tracker/colors/color.dart';
import 'package:expense_tracker/screen/buildbalance.dart';
import 'package:expense_tracker/screen/spentitem.dart';


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: _buildNavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            BalanceWidget(), 
            Expanded(child: MyWidget()), 
            ],
        ),
      ),
    );
  }
  Widget _buildHeaderOfList(){
    return Container( child:
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              decoration: BoxDecoration(),
              child: Text(
                "All Expenses",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print("clicked");
              },
              splashColor: Colors.transparent,
              child: Container(
                width: 72,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "View all",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),);
  }

  AppBar _buildNavBar() {
    return AppBar(
      backgroundColor: background,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: black,
            size: 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 150),
            child: Text(
              "Dashboard",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
        ],
      ),
    );
  }

  

}
