import 'package:fintap/presentation/cards_page/new_card_screen.dart';
import 'package:fintap/view_models/card_provider/card_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen();

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<CardProvider>(context, listen: false).getCards();
  }

  @override
  Widget build(BuildContext context) {
    List<Map> myList = [
      {"title": "ATM", "subtitle": "Allow ATM transactions"},
      {"title": "POS", "subtitle": "Allow POS transactions"},
      {"title": "Web", "subtitle": "Allow Web transactions"},
      {"title": "Mobile", "subtitle": "Allow Mobile transactions"},
      // {"title": "Status", "subtitle": "Activate/Deactivate this card"},
    ];
    return Consumer<CardProvider>(
      builder: (context, cardProvider, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text("Cards"),
            actions: [
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.add,
              //     color: Colors.black,
              //   ),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print("");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NewCardScreen();
                          },
                        ),
                      );
                      // showCupertinoModalPopup(
                      //   context: context,
                      //   builder: (context) {
                      //     return Container(
                      //       height: MediaQuery.of(context).size.height / 1.1,
                      //       color: Colors.white,
                      //     );
                      //   },
                      // );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("New Card"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Builder(
                  builder: (context) {
                    if (cardProvider.cards.isEmpty) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "No Cards Found",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    } else {
                      var card = cardProvider.cards[0];
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${card.currency}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${card.maskedPan}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "EXP: ${card.expiryMonth}/${card.expiryYear}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${card.cardStatus?.toUpperCase()}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  // height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      var cardChannels =
                          cardProvider.cards[0].spendingControls?.channels;

                      bool? mySwitch(int index) {
                        switch (index) {
                          case 0:
                            return cardChannels?.atm;
                          case 1:
                            return cardChannels?.pos;
                          case 2:
                            return cardChannels?.mobile;
                          case 3:
                            return cardChannels?.web;
                          case 4:
                            return cardChannels?.atm;
                          default:
                            return false;
                        }
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.blueGrey[400],
                              ),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    myList[index]["title"],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    myList[index]["subtitle"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CupertinoSwitch(
                            value: cardProvider.cardSwitches
                                    .toJson()
                                    .values
                                    .toList()[index] ??
                                false,
                            onChanged: (bool val) {
                              print(index);
                              cardProvider.toggleChannel(
                                index,
                                val,
                                cardProvider.cards[0],
                              );
                              setState(() {
                                // mySwitch = val;
                              });
                            },
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Divider(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
