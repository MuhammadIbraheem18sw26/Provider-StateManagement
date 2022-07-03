import 'models/models.dart';

abstract class Repository {
  //find methods
  Future<List<Recipe>> findAllRecipe();
  Stream<List<Recipe>> watchAllRecipes();
  Stream<List<Ingredient>> watchAllIngredient();
  Future<Recipe> findRecipeById(int id);
  Future<List<Ingredient>> findAllIngredients();
  Future<List<Ingredient>> findRecipeIngredients(int recipeId);

  //add methods
  Future<int> insertRecipe(Recipe recipe);
  Future<List<int>> insertIngredients(List<Ingredient> ingredients);
//delete methods

  Future<void> deleteRecipe(Recipe recipe);
  Future<void> deleteIngredient(Ingredient ingredient);
  Future<void> deleteIngredients(List<Ingredient> ingredients);
  Future<void> deleteRecipeIngredients(int recipeId);

  Future init();
  void close();
}
