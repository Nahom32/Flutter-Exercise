import 'package:firstproject/recipe.dart';
import 'package:firstproject/recipeRepo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: RecipeView()
    );
  }
}
class RecipeView extends StatefulWidget {
  const RecipeView({super.key});

  @override
  State<RecipeView> createState() => _RecipeViewState();
}

class _RecipeViewState extends State<RecipeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Title(color: Colors.blue, child: const Text("Food Recipes"))
    ),
    body: ListView.builder(itemCount: dataHolder.length,
    itemBuilder: (context, index) {
      return buildRecipeCard(dataHolder[index]);

    },
    )
    );
  }
}

Widget buildRecipeCard(Recipe recipe){
  return Card(
    child: Column(children: [
      Image(image: AssetImage(recipe.imageURL)),
      Text(recipe.label),
    ],)
  );
}

