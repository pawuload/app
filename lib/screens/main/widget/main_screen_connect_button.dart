import 'package:flutter/material.dart';
import 'package:iot_app/common/constants/app_color.dart';

class MainScreenConnectButton extends StatelessWidget {
  const MainScreenConnectButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: _buildButtonStyle(),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Połącz",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ButtonStyle _buildButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return AppColors.accentColor.withOpacity(0.6);
          return AppColors.accentColor;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: AppColors.borderColor),
        ),
      ),
    );
  }
}
