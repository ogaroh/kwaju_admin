import 'package:admin/shared/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          // Image.asset('assets/images/logo.png'),
          Text(
            'User/Admin/Orders/All Orders',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.grey.shade400,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const SizedBox(
            width: 300,
            child: CupertinoSearchTextField(
              placeholder: 'Type to search',
              placeholderStyle: TextStyle(fontSize: 13),
            ),
          ),
          const SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: Badge.count(count: 5, child: const Icon(Icons.notifications)),
          ),
          const CircleAvatar(
            radius: 49,
            backgroundColor: kPrimaryColor,
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
            ),
            // child: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
