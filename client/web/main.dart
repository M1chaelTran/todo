library todo;

import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'lib/item.dart';

part 'todo.dart';
part 'items_backend.dart';

class TodoModule extends Module {
  TodoModule() {
    bind(Todo);
    bind(ItemsBackend);
  }
}

void main() {
  applicationFactory().addModule(new TodoModule()).run();
}

