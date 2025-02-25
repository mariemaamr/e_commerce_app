class AppValidators {
  /// **Validate Email**
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Email cannot be empty";
    }
    // Regular expression for email validation
    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (!emailRegex.hasMatch(email)) {
      return "Enter a valid email address";
    }
    return null; // Valid email
  }

  /// **Validate Password**
  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password cannot be empty";
    }
    if (password.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null; // Valid password
  }

  /// **Validate Confirm Password**
  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "Confirm password cannot be empty";
    }
    if (password != confirmPassword) {
      return "Passwords do not match";
    }
    return null; // Passwords match
  }

  /// **Validate Username**
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return "Username cannot be empty";
    }
    if (username.length < 3) {
      return "Username must be at least 3 characters long";
    }
    if (username.contains(" ")) {
      return "Username cannot contain spaces";
    }
    return null; // Valid username
  }

  /// **Validate Full Name**
  static String? validateFullName(String? fullName) {
    if (fullName == null || fullName.isEmpty) {
      return "Full name cannot be empty";
    }
    final nameRegex = RegExp(r"^[a-zA-Z\s]+$");
    if (!nameRegex.hasMatch(fullName)) {
      return "Full name must only contain letters";
    }
    if (fullName.length < 3) {
      return "Full name must be at least 3 characters long";
    }
    return null; // Valid full name
  }

  /// **Validate Phone Number**
  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return "Phone number cannot be empty";
    }
    final phoneRegex = RegExp(r"^\+?[0-9]{10,15}$");
    if (!phoneRegex.hasMatch(phoneNumber)) {
      return "Enter a valid phone number (10-15 digits, optional +)";
    }
    return null; // Valid phone number
  }
}
