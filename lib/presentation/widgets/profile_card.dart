import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    this.email,
  });
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                email ?? 'Unauthenticated',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
