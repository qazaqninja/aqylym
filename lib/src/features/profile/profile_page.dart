import 'package:aqylym/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // final String firstName;
  // final String lastName;

  const ProfilePage({
    super.key,
    // required this.firstName,
    // required this.lastName,
  });

  // String get initials {
  //   final firstInitial = firstName.isNotEmpty ? firstName[0].toUpperCase() : '';
  //   final lastInitial = lastName.isNotEmpty ? lastName[0].toUpperCase() : '';
  //   return '$firstInitial$lastInitial';
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.backgroundOfName,
                  child: Text(
                    'AS',
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: AppColors.mint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Add more profile content here
            ],
          ),
        ),
      ),
    );
  }
}
