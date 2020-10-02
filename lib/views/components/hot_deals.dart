import 'package:flutter/material.dart';
import 'package:sewain_aku/utils/colors.dart';
import 'package:sewain_aku/utils/sizes.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          HotDealCard(
            image: "assets/porsche/porsche_911.png",
            title: "Simamora Travel",
            location: "Toba Samosir",
            price: 200090,
            press: () {
            },
          ),
          HotDealCard(
            image: "assets/porsche/porsche_boxster.png",
            title: "Indah Travel",
            location: "Dolok Sanggul",
            price: 238000,
            press: () {
            },
          ),
          HotDealCard(
            image: "assets/porsche/porsche_cayman.png",
            title: "Gondrong Travel",
            location: "Medan",
            price: 420000,
            press: () {},
          ),
          HotDealCard(
            image: "assets/porsche/porsche_macan.png",
            title: "Kutu Gondrong",
            location: "Jakarta",
            price: 340000,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class HotDealCard extends StatelessWidget {
  const HotDealCard({
    Key key,
    this.image,
    this.title,
    this.location,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, location;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double widthCard = size.width * 0.6;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      width: widthCard,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding, top: defaultPadding),
              child: Text("$title",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: textColor),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding),
              child: Text(
                "$location",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: primaryColor.withOpacity(0.5)),
              ),
            ),
            Image.asset(image),
            Container(
              width: widthCard,
              alignment: Alignment.centerRight,
              padding: new EdgeInsets.only(right: defaultPadding, bottom: defaultPadding/2),
              child: Text(
                'Rp $price',
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: primaryColor),
              ),
            ),
            SizedBox(
              width: widthCard,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                color: primaryColor,
                onPressed: () {},
                child: Text(
                  "Rent Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
