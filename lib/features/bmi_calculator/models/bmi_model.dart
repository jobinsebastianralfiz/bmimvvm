import 'package:bmimvvm/core/constants/app_constants.dart';

class BMIModel {
  // Properties
  final double height;
  final double weight;
  final String bmiCategory;
  final String bmiDescription;
  final String gender;
  final double bmiValue;

  // Regular constructor
  BMIModel({
    required this.height,
    required this.weight,

    required this.bmiCategory,
    required this.bmiDescription,
    required this.gender,
    required this.bmiValue
  });

  // Factory constructor that calculates BMI and determines category and description
  factory BMIModel.initial(){
    return BMIModel(

      height: AppConstants.defaultHeight,
      weight: AppConstants.defaultWeight,
      bmiValue: 0,
      bmiCategory: '',
      bmiDescription: "",
      gender: AppConstants.defaultGender

    );
  }

}