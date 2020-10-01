import 'package:flutter/material.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:paritta/widgets/custom_button.dart';
import 'package:paritta/core/const.dart';

class ChantingPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const ChantingPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: AppColors.mainColor,
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CustomButton(
                  child: Icon(
                    Icons.menu,
                    color: AppColors.styleColor,
                  ),
                  onTap: onMenuTap,
                  size: 50),
              Text(
                "Chanting",
                style: kTitleTextStyle,
              ),
              SizedBox(
                width: 50,
                height: 50,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.white38,
            height: 2,
            thickness: 2,
            indent: 12,
            endIndent: 12,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(12),
              children: <Widget>[
                Text(
                  "Since these Paritta’s are meant for protection and other good results, it is important that they are chanted and listened to in a correct way. There are some conditions to be fulfilled by both the chanters and the listeners so as to get the full benefits of the Paritta. In fact, there are three conditions for the chanters to fulfill and another three for the listeners.",
                  style: kTranslationStyle,
                ),
                Text(
                  "\nThe three conditions for the chanters are:",
                  style: kTranslationStyle,
                ),
                Text(
                  "1. They must have learnt and chant the Suttas correctly and fully without any omission,\n2. They must understand the meaning of the Suttas being chanted, and\n3. They must chant with the heart filled with goodwill and loving-kindness.",
                  style: kTranslationStyle,
                ),
                Text(
                  "\nThe three conditions for the listeners are:",
                  style: kTranslationStyle,
                ),
                Text(
                  "1. They must not have committed the five most heinous crimes, namely, killing one's own father, killing one's own mother, killing an Arahant, causing the blood to be congealed in the body of the Buddha by wounding Him, and causing schism in the Saṁgha.\n2. They must not have the 'fixed wrong view ', the view that rejects kamma and its results.\n3. They must listen to the chanting with confidence in the efficacy of the Suttas in warding off the dangers and bringing good results. (When people listen with confidence they do so with respect and attention, so listening with respect and attention is in my opinion, implied in this condition.)",
                  style: kTranslationStyle,
                ),
                Text(
                  "\nOnly when these conditions are fulfilled do people get full benefits from the Parittas. Therefore, it is important that when the Parittas are being chanted, people should listen to the chanting with confidence, respect and attentiveness. Moreover, the chanting of Parittas for benefits is a two way action. Those who chant are like those who give out something, and those who listen are like those who take what is given; if they do not take what is given they will not get the thing. In the same way if people do not listen to the chanting, but just let other people chant and themselves do something else, they surely are not taking what is given and so they will not get the benefits of the chanting.",
                  style: kTranslationStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
