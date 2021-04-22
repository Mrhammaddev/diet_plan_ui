import 'package:diet_plan_ui/main.dart';
import 'package:diet_plan_ui/models/meals_list_data.dart';
import 'package:flutter/material.dart';

class MealsCardDisplay extends StatefulWidget {
  MealsCardDisplay({
    this.mealsListData,
  });

  final MealsListData mealsListData;

  @override
  _MealsCardDisplayState createState() => _MealsCardDisplayState();
}

class _MealsCardDisplayState extends State<MealsCardDisplay> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      // height: 200,
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: HexColor(widget.mealsListData.endColor)
                          .withOpacity(0.6),
                      offset: const Offset(1.1, 4.0),
                      blurRadius: 8.0),
                ],
                gradient: LinearGradient(
                  colors: <HexColor>[
                    HexColor(widget.mealsListData.startColor),
                    HexColor(widget.mealsListData.endColor),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(54.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 54, left: 16, right: 16, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.mealsListData.titleTxt,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontFamily: FitnessAppTheme.fontName,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.2,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.mealsListData.meals.join('\n'),
                              style: TextStyle(
                                // fontFamily: FitnessAppTheme.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 0.2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // mealsListData.kacl != 0
                    //     ? Row(
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         crossAxisAlignment: CrossAxisAlignment.end,
                    //         children: <Widget>[
                    //           Text(
                    //             mealsListData.kacl.toString(),
                    //             textAlign: TextAlign.center,
                    //             style: TextStyle(
                    //               fontFamily: FitnessAppTheme.fontName,
                    //               fontWeight: FontWeight.w500,
                    //               fontSize: 24,
                    //               letterSpacing: 0.2,
                    //               color: FitnessAppTheme.white,
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.only(
                    //                 left: 4, bottom: 3),
                    //             child: Text(
                    //               'kcal',
                    //               style: TextStyle(
                    //                 fontFamily:
                    //                     FitnessAppTheme.fontName,
                    //                 fontWeight: FontWeight.w500,
                    //                 fontSize: 10,
                    //                 letterSpacing: 0.2,
                    //                 color: FitnessAppTheme.white,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       )
                    //     : Container(
                    //         decoration: BoxDecoration(
                    //           color: FitnessAppTheme.nearlyWhite,
                    //           shape: BoxShape.circle,
                    //           boxShadow: <BoxShadow>[
                    //             BoxShadow(
                    //                 color: FitnessAppTheme.nearlyBlack
                    //                     .withOpacity(0.4),
                    //                 offset: Offset(8.0, 8.0),
                    //                 blurRadius: 8.0),
                    //           ],
                    //         ),
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(6.0),
                    //           child: Icon(
                    //             Icons.add,
                    //             color: HexColor(mealsListData.endColor),
                    //             size: 24,
                    //           ),
                    //         ),
                    //       ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 8,
            child: SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(widget.mealsListData.imagePath),
            ),
          )
        ],
      ),
    );
  }
}
