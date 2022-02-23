import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pallete.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: CircleAvatar(
                radius: size.width * 0.14,
                backgroundColor: Colors.grey[400]!.withOpacity(
                  0.4,
                ),
                child: Icon(
                  FontAwesomeIcons.user,
                  color: kWhite,
                  size: size.width * 0.1,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.08,
          left: size.width * 0.52,
          child: Container(
            height: size.width * 0.09,
            width: size.width * 0.09,
            decoration: BoxDecoration(
              color: kBlue,
              shape: BoxShape.circle,
              border: Border.all(color: kWhite, width: 2),
            ),
            child: Icon(
              FontAwesomeIcons.arrowUp,
              color: kWhite,
              size: size.width * 0.05,
            ),
          ),
        )
      ],
    );
  }
}
