import 'package:flutter/material.dart';
import 'package:real_estate/estate-constants.dart';

class chapterTwo extends StatefulWidget {
  const chapterTwo({Key? key}) : super(key: key);

  @override
  State<chapterTwo> createState() => _chapterTwoState();
}

class _chapterTwoState extends State<chapterTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    color: Colors.blue,
                    child: Image(
                      image: AssetImage('images/house.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x8C011f44),
                              blurRadius: 4.0,
                              offset: Offset(3, 4))
                        ],
                      ),
                      width: double.infinity,
                      height: 100.0,
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Modern Apartment with River View',
                              style: titleHome,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Grinn 12, 10115 Hamsburg',
                              style: addressText,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Divider(
                              height: 20,
                              thickness: .2,
                              color: secondaryColor,
                            ),
                            Expanded(
                                child: Container(
                                    child: Row(
                              children: [
                                featureTab(
                                  iconify: Icons.chair,
                                  infoData: '1',
                                ),
                                SizedBox(width: 16.0),
                                featureTab(
                                  iconify: Icons.bathtub,
                                  infoData: '2',
                                ),
                                SizedBox(width: 16.0),
                                featureTab(
                                  iconify: Icons.bed,
                                  infoData: '3',
                                ),
                                Expanded(
                                  child: PricingWidget(
                                    housePrice: 1000,
                                    rate: 'yearly',
                                  ),
                                )
                              ],
                            ))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class PricingWidget extends StatelessWidget {
  PricingWidget({required this.housePrice, required this.rate});

  int housePrice;
  String rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          housePrice.toString(),
          style: addressText,
        ),
        Text(
          '/',
          style: addressText,
        ),
        Text(
          rate,
          style: addressText,
        )
      ],
    );
  }
}

class featureTab extends StatelessWidget {
  featureTab({required this.iconify, required this.infoData});

  IconData iconify;
  String infoData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          iconify,
          color: secondaryColor,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          infoData,
          style: addressText,
        )
      ],
    );
  }
}
