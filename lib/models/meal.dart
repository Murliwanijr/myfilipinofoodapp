class Meal {
  const Meal(
      {required this.name,
      required this.ingredients,
      required this.imgUrl,
      required this.instructions});

  final String name;
  final List<String> ingredients;
  final String imgUrl;
  final String instructions;
}
