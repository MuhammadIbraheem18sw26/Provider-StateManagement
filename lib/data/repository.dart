import 'models/models.dart';

abstract class Repository {
  //find methods
  List<Recipe> findAllRecipe();
  Recipe findRecipeById(int id);
  List<Ingredient> findAllIngredients();
  List<Ingredient> findRecipeIngredients(int recipeId);

  //add methods
  int insertRecipe(Recipe recipe);
  List<int> insertIngredients(List<Ingredient> ingredients);
//delete methods

  void deleteRecipe(Recipe recipe);
  void deleteIngredient(Ingredient ingredient);
  void deleteIngredients(List<Ingredient> ingredients);
  void deleteRecipeIngredients(int recipeId);

  Future init();
  void close();
}
