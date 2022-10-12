import 'package:bankui/cards.dart';
import 'package:bankui/trans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        title: Center(child: Text("Welcome Mausam")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.grey.shade300,
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: Colors.red),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://pbs.twimg.com/profile_images/1485050791488483328/UNJ05AV8_400x400.jpg"),
                                radius: 50,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SAMMAUNATI BACHAT KHATA",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "NPR.1,00,99.35",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                              Text("2344557687987090"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              "WOULD YOU LIKE TO?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Cards(
                  pic:
                      "https://st2.depositphotos.com/3752143/5620/v/380/depositphotos_56206091-stock-illustration-vector-piggy-bank.jpg?forcejpeg=true",
                  text1: "MyAccount"),
              Cards(
                  pic:
                      "https://img.freepik.com/premium-vector/vector-cartoon-bank-building-with-dollar-sign-icon-comic-style-bank-sign-illustration-pictogram-building-business-splash-effect-concept_157943-4699.jpg?w=2000",
                  text1: "LoadeSewa"),
              Cards(
                  pic:
                      "https://cdn2.vectorstock.com/i/1000x1000/73/71/graphic-cartoon-character-credit-card-payment-vector-36147371.jpg",
                  text1: "Payment"),
            ],
          ),
          Row(
            children: [
              Cards(
                  pic:
                      "https://cdn-icons-png.flaticon.com/512/3945/3945782.png",
                  text1: "FundTransfer"),
              Cards(
                  pic:
                      "https://img.freepik.com/premium-vector/recurring-pay-day-monthly-payment-loan-money-cash-payday-icon-calendar-flat-cartoon_212005-672.jpg?w=2000",
                  text1: "SchedulePayment"),
              Cards(
                  pic:
                      "https://img.freepik.com/premium-vector/qr-code-sample-smartphone-scanning-qr-code-icon-flat-design-stock-vector-illustration_550395-108.jpg",
                  text1: "Scan toPay"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              "LAST TRANSACTIONS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView(
            children: [
              Transactions(
                  text1: "CWDR/",
                  text2: "956756756756",
                  text3: "9-10-22",
                  text4: "NPR.10,000.00"),
              Transactions(
                  text1: "CWDR/",
                  text2: "756756756756",
                  text3: "11-10-22",
                  text4: "NPR.9,000.00"),
              Transactions(
                  text1: "CWDR/",
                  text2: "67657567576765",
                  text3: "15-10-22",
                  text4: "NPR.8,000.00"),
            ],
          ))
        ],
      ),
    );
  }
}
