import '../src/models/models.dart';

abstract class PizzaRepo {
  Future<List<Pizza>> getPizzas();
}