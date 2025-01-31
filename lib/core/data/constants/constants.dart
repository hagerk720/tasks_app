import 'package:flutter/material.dart';

const registerEndpoint = 'register';
const loginEndpoint = 'login';
const logoutEndpoint = 'logout';
const authorization = 'Authorization';
const tokenType = 'Bearer';
const createTaskEndpoint = 'task/create';
const deleteTaskEndpoint = 'task/delete/{id}';
const idPath = 'id';
const getTasksEndpoint = 'task/all';
const List<Color> iconsColors = [
  Color(0xfffeccd1),
  Color(0xfffee2c6),
  Color(0xffd6f1ff)
];
const updateTaskEndpoint = 'task/update/{taskId}';
const emailFormat =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
const localizationLangs = ['en', 'ar'];
