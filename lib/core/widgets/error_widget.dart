import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_colors.dart';
import 'package:quotes/core/utils/media_query_values.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  const CustomErrorWidget({super.key,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
            child: Icon(
          Icons.warning_amber_rounded,
          size: 150,
        )),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: const Text(
              'Something Went Wrong',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            )),
        Text(
          'Please Try Again',
          style: TextStyle(
            color: AppColors.hint,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 55,
          width: context.width * 0.55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: AppColors.primary,
              elevation: 500,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            child: const Text(
              'Refresh Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              if(onPressed != null){
                onPressed!();
              }
            },
          ),
        )
      ],
    );
  }
}
