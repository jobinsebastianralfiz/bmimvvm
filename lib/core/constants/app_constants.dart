class AppConstants{


  //BMI Categories
  static const String underWeight='Underweight';
  static const String normal = 'Normal';
  static const String overweight = 'Overweight';
  static const String obese = 'Obese';


  // BMI Category Descriptions
  static const String underweightDesc = 'You are underweight. Consider gaining some weight.';
  static const String normalDesc = 'You have a normal body weight. Good job!';
  static const String overweightDesc = 'You are overweight. Consider losing some weight.';
  static const String obeseDesc = 'You are obese. Please consult with a healthcare professional.';

  // Default Values
  static const double defaultHeight = 170.0; // cm
  static const double defaultWeight = 70.0; // kg


  // Min-Max Values
  static const double minHeight = 100.0; // cm
  static const double maxHeight = 220.0; // cm
  static const double minWeight = 30.0; // kg
  static const double maxWeight = 150.0; // kg

  // Gender
  static const String male = 'Male';
  static const String female = 'Female';
  static const String defaultGender = male;

  // Gender-Specific BMI Descriptions
  static const String maleUnderweightDesc = 'You are underweight. Men typically need more muscle mass. Consider strength training and a protein-rich diet.';
  static const String maleNormalDesc = 'You have a healthy body weight for a man. Maintain regular exercise and a balanced diet.';
  static const String maleOverweightDesc = 'You are overweight. Men tend to carry excess weight around the midsection, which can increase health risks.';
  static const String maleObeseDesc = 'You are obese. Men with obesity face higher risks of heart disease and diabetes. Please consult with a healthcare professional.';

  static const String femaleUnderweightDesc = 'You are underweight. Women need adequate body fat for hormone regulation. Consider a balanced diet with healthy fats.';
  static const String femaleNormalDesc = 'You have a healthy body weight for a woman. Keep up the good work with your diet and exercise routine.';
  static const String femaleOverweightDesc = 'You are overweight. Women typically need to focus on both cardio and strength training for weight management.';
  static const String femaleObeseDesc = 'You are obese. Women with obesity may face additional risks like PCOS. Please consult with a healthcare professional.';
}