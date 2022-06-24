import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
  int? id;
  int? recipeId;
  String? name;
  double? weight;

  Ingredient({this.id, this.recipeId, this.name, this.weight});
  @override
  List<Object?> get props => [recipeId, name, weight];
}
