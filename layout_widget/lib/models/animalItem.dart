import 'package:flutter/material.dart';

class Animal {
  // 이미지 경로
  // 동물 이름
  // 종류
  // 비행 여부
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  Animal(
      // required : 객체 생성 시, 필수로 전달해야할 값으로 지정
      {required this.imagePath,
      required this.animalName,
      required this.kind,
      this.flyExist});
}
