import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifiEmailview extends StatefulWidget {
  const VerifiEmailview({super.key});

  @override
  State<VerifiEmailview> createState() => _VerifiEmailviewState();
}

class _VerifiEmailviewState extends State<VerifiEmailview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text('verify your email'),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('send email verification'),
          )
        ],
      ),
    );
  }
}
