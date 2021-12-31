import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/widget/custom_button.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// const productdetail =
// "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.";

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget header() {
    return Container(
      width: double.infinity,
      height: 371.44,
      padding: EdgeInsets.only(top: 57, left: 25, right: 25),
      decoration: BoxDecoration(
        color: textfieldfill,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/back_arrow.png',
                width: 10,
                height: 18,
              ),
              Image.asset(
                'assets/icons/logout.png',
                width: 18.46,
                height: 18.46,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            width: double.infinity,
            height: 199.18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/apel.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Naturel Red Apple',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: reguler,
                ),
              ),
              Image.asset(
                'assets/icons/favorit.png',
                width: 24,
                height: 24,
                color: kgrey2Color,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '1kg, Price',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 119.67,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/minus.png',
                      width: 17,
                    ),
                    Container(
                      width: 45.67,
                      height: 45.67,
                      decoration: BoxDecoration(
                        border: Border.all(color: kgrey2Color),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Align(
                        child: Text(
                          '1',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/plus.png',
                      width: 17,
                      height: 17,
                      color: kgreenColor,
                    ),
                  ],
                ),
              ),
              Text(
                String.fromCharCodes(Runes(
                  '\u0024' + '4.99',
                )),
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: kgrey2Color,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: kgrey2Color,
                  width: 1,
                ),
              ),
            ),

            // product detail
            child: ExpandablePanel(
              header: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Product Detail",
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  )),
              collapsed: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: greyTextStyle,
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              expanded: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                      style: greyTextStyle,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Container(
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),

          // Nutritions
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kgrey2Color,
                  width: 1,
                ),
              ),
            ),

            // Nutritions
            child: ExpandablePanel(
              header: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nutritions",
                      style: blackTextStyle.copyWith(fontWeight: bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: kgrey2Color.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '100gr',
                        style: greyTextStyle.copyWith(fontSize: 9),
                      ),
                    )
                  ],
                ),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: greyTextStyle,
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              expanded: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                      style: greyTextStyle,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Container(
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                  ),
                );
              },
            ),
          ),

          //Rating
          ExpandablePanel(
            header: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Review",
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kgrey2Color.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (RatingBar) {
                        print(RatingBar);
                      },
                    ),
                  ),
                ],
              ),
            ),
            collapsed: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                style: greyTextStyle,
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            expanded: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                    style: greyTextStyle,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            builder: (_, collapsed, expanded) {
              return Container(
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget customButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 90),
      child: CustomButton(),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        content(),
        customButton(),
      ],
    );
  }
}
