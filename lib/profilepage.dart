import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE3E9),
      body: Stack(children: [
        ProfileWidget(),
        Column(
          children: [
            SizedBox(
              height: 110,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/cristanio.png",
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Laura Vat",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFE65738),
                                ),
                                Text(
                                  "124 points",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.edit_note_outlined,
                            size: 30,
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

bool switchValue = true;
bool switchValue1 = true;

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 420,
          decoration: BoxDecoration(
              color: Color(0xFF29333F),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.account_balance_wallet_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Account details",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.currency_rupee),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Payment details",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.calendar_month_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Order History",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.star_border_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Rewards",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.price_change_outlined,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Student discount",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.notifications_none_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Recieve notifications",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 10,
                                  child: CupertinoSwitch(
                                    // This bool value toggles the switch.
                                    value: switchValue1,
                                    activeColor: CupertinoColors.activeBlue,

                                    onChanged: (bool? value) {
                                      // This is called when the user toggles the switch.
                                      setState(() {
                                        switchValue1 = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.share_location_rounded),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Share location data",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  // This bool value toggles the switch.
                                  value: switchValue,
                                  activeColor: CupertinoColors.activeBlue,
                                  onChanged: (bool? value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      switchValue = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Other",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.location_history_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.currency_rupee),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Currency",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.calendar_month_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Order History",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.star_border_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Rewards",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.price_change_outlined,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Student discount",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
