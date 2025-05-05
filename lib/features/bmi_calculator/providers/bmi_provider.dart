import 'package:bmimvvm/features/bmi_calculator/models/bmi_model.dart';
import 'package:bmimvvm/features/bmi_calculator/services/bmi_service.dart';
import 'package:flutter/material.dart';

class BMIProvider extends ChangeNotifier {
  final BMIService _bmiService = BMIService();

  //current state

  BMIModel _bmiData = BMIModel.initial();

  BMIModel get bmiData => _bmiData;

  // height

  void updateHeight(double height) {
    final double bmiValue =
        _bmiService.calculateBMI(height, _bmiData.weight, bmiData.gender);

    final String category =
        _bmiService.getBMICategory(bmiValue, _bmiData.gender);

    final String descrition =
        _bmiService.getBMIDescription(category, _bmiData.gender);

    _bmiData = BMIModel(
        height: height,
        weight: _bmiData.weight,
        bmiCategory: category,
        bmiDescription: descrition,
        gender: _bmiData.gender,
        bmiValue: bmiValue);

    notifyListeners();
  }


  // Update weight and recalculate BMI
  void updateWeight(double weight) {
    final double bmiValue = _bmiService.calculateBMI(
        _bmiData.height,
        weight,
        _bmiData.gender
    );
    final String category = _bmiService.getBMICategory(
        bmiValue,
        _bmiData.gender
    );
    final String description = _bmiService.getBMIDescription(
        category,
        _bmiData.gender
    );

    _bmiData = BMIModel(
      height: _bmiData.height,
      weight: weight,
      bmiValue: bmiValue,
      bmiCategory: category,
      bmiDescription: description,
      gender: _bmiData.gender,
    );

    notifyListeners();
  }

  // Update gender and recalculate BMI
  void updateGender(String gender) {
    // When gender changes, we need to recalculate BMI with the new gender
    final double bmiValue = _bmiService.calculateBMI(
        _bmiData.height,
        _bmiData.weight,
        gender
    );
    final String category = _bmiService.getBMICategory(
        bmiValue,
        gender
    );
    final String description = _bmiService.getBMIDescription(
        category,
        gender
    );

    _bmiData = BMIModel(
      height: _bmiData.height,
      weight: _bmiData.weight,
      bmiValue: bmiValue,
      bmiCategory: category,
      bmiDescription: description,
      gender: gender,
    );

    notifyListeners();
  }


  // Reset to initial values
  void resetBMI() {
    _bmiData = BMIModel.initial();

    // After resetting to initial values, recalculate BMI
    final gender = _bmiData.gender;
    final double bmiValue = _bmiService.calculateBMI(
        _bmiData.height,
        _bmiData.weight,
        gender
    );
    final String category = _bmiService.getBMICategory(
        bmiValue,
        gender
    );
    final String description = _bmiService.getBMIDescription(
        category,
        gender
    );

    _bmiData = BMIModel(
      height: _bmiData.height,
      weight: _bmiData.weight,
      bmiValue: bmiValue,
      bmiCategory: category,
      bmiDescription: description,
      gender: gender,
    );

    notifyListeners();
  }


}
