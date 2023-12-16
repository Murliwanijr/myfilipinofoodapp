import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfilipinofoodapp/models/meal.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Meal> mealList = [];
  final db = FirebaseFirestore.instance;
  bool isLoading = false;

  void getAllFavoriteFood() async {
    setState(() {
      isLoading = true;
    });

    try {
      await db.collection("favoriteFood").get().then((event) {
        for (var food in event.docs) {
          // var newMeal = Meal(
          //   name: food.data()['name'],
          //   ingredients: food.data()['ingredients'],
          //   imgUrl: food.data()['imgUrl'],
          //   instructions: food.data()['instructions'],
          // );
          print("${food.id} => ${food.data()}");
          print(food.data()['ingredients'].runtimeType);
          // mealList.add(newMeal);
        }
      });
    } catch (e) {
      print(e);
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getAllFavoriteFood();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width,
          maxHeight: height,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Your Filipino Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : mealList.isEmpty
                      ? const Text('You have no saved favorite Filipino food.')
                      : ListView.builder(
                          itemCount: mealList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(mealList[index].name),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
