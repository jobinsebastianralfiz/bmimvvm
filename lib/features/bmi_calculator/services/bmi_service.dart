import 'package:bmimvvm/core/constants/app_constants.dart';

class BMIService {
  // calculateBMI()

  double calculateBMI(double height, double weight, String gender) {
    double heightInMeters = height / 100;
    double standardBMI = weight / (heightInMeters * heightInMeters);
    if (gender == AppConstants.female) {
      return standardBMI * 0.9;
    } else {
      return standardBMI;
    }
  }

  // Get BMI category based on BMI value and gender
  String getBMICategory(double bmi, String gender) {
    // Gender-specific BMI category thresholds
    if (gender == AppConstants.female) {
      // Slightly different thresholds for females
      if (bmi < 17.5) {
        return AppConstants.underWeight;
      } else if (bmi >= 17.5 && bmi < 24) {
        return AppConstants.normal;
      } else if (bmi >= 24 && bmi < 29) {
        return AppConstants.overweight;
      } else {
        return AppConstants.obese;
      }
    } else {
      // Standard thresholds for males
      if (bmi < 18.5) {
        return AppConstants.underWeight;
      } else if (bmi >= 18.5 && bmi < 25) {
        return AppConstants.normal;
      } else if (bmi >= 25 && bmi < 30) {
        return AppConstants.overweight;
      } else {
        return AppConstants.obese;
      }
    }
  }

// Get description based on BMI category and gender
  String getBMIDescription(String category, String gender) {
    if (gender == AppConstants.male) {
      switch (category) {
        case AppConstants.underWeight:
          return AppConstants.maleUnderweightDesc;
        case AppConstants.normal:
          return AppConstants.maleNormalDesc;
        case AppConstants.overweight:
          return AppConstants.maleOverweightDesc;
        case AppConstants.obese:
          return AppConstants.maleObeseDesc;
        default:
          return '';
      }
    } else {
      switch (category) {
        case AppConstants.underWeight:
          return AppConstants.femaleUnderweightDesc;
        case AppConstants.normal:
          return AppConstants.femaleNormalDesc;
        case AppConstants.overweight:
          return AppConstants.femaleOverweightDesc;
        case AppConstants.obese:
          return AppConstants.femaleObeseDesc;
        default:
          return '';
      }
    }
  }
}
