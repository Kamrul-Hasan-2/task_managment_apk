class Urls{
  static const String _baseUrl = 'http://35.73.30.144:2005/api/v1';
  static const String registration = '$_baseUrl/Registration';
  static const String logIn = '$_baseUrl/Login';
  static const String addNewTask = '$_baseUrl/createTask';
  static const String getNewTaskList = '$_baseUrl/listTaskByStatus/New';
  static String getEmailVerify(String email) {
    return '$_baseUrl/RecoverVerifyEmail/$email';
  }
  static String getOTPVerify(String email, String otp) {
    return '$_baseUrl/RecoverVerifyOtp/$email/$otp';
  }

  static const String resetPassword = '$_baseUrl/RecoverResetPassword';

}