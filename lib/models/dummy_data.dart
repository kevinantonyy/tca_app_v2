import 'package:flutter/material.dart';
import 'package:tca_app_v2/models/category.dart';
import 'package:tca_app_v2/models/newsletter_category.dart';

var dummyCategories = const [
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
  Category(
    id: 'c1',
    title: 'Event Name #1',
    link:
        'https://media.istockphoto.com/id/1161352480/vector/sample-sign-sample-square-speech-bubble-sample.jpg?s=612x612&w=0&k=20&c=qZ480B32q1qGLxoTZEaXcxDB4BMCMDGAGnDQ0hEJ_I8=',
  ),
  Category(
    id: 'c2',
    title: 'Event Name #2',
    link:
        'https://media.istockphoto.com/id/1096052566/vector/stamprsimp2red.jpg?s=612x612&w=0&k=20&c=KVu0nVz7ZLbZsRsx81VBZcuXZ1MlEmLk9IQabO2GkYo=',
  ),
];

var dummyNewsletters = const [
  NewsletterCategory(
    id: 'n1',
    title: 'October Newsletter',
    color: Colors.red,
  ),
  NewsletterCategory(
    id: 'n2',
    title: 'November Newsletter',
    color: Colors.purple,
  ),
  NewsletterCategory(
    id: 'n2',
    title: 'December Newsletter',
    color: Colors.blue,
  ),
];
