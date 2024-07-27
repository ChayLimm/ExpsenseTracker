import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts package
import 'package:expense_tracker/colors/color.dart';


class BalanceWidget extends StatefulWidget {
  @override
  _BalanceWidgetState createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
  int balance = 12200; // Initial balance value, can be set dynamically

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text(
              "\$",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: 260,
            margin: EdgeInsets.only(left: 10), // Adjust the value as needed
            child: Text(
              balance.toString(),
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "USD",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to update balance, can be called based on user interaction
  void updateBalance(int newBalance) {
    setState(() {
      balance = newBalance;
    });
  }
}
