import 'package:diet_plan_ui/mealsCard.dart';
import 'package:diet_plan_ui/models/meals_list_data.dart';
import 'package:diet_plan_ui/waterReminder.dart';
import 'package:flutter/material.dart';

class DietPlan extends StatefulWidget {
  @override
  _DietPlanState createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> {
  List<MealsListData> mealsListData = MealsListData.TabIconList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xff145374),
        title: Text("Diet Plan"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Meals",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mealsListData.length,
              itemBuilder: (BuildContext context, int index) {
                return MealsCardDisplay(
                  mealsListData: mealsListData[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Water",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          WaterReminder(),
        ],
      ),
    );
  }
}
