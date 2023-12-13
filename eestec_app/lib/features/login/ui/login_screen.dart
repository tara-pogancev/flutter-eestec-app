import 'package:eestec_app/core/i18n/strings.g.dart';
import 'package:eestec_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _signIn(BuildContext context) {
    context.push(Routes.events);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: const Offset(
                          2.0, 2.0), // shadow direction: bottom right
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/eestec_logo.png',
                      color: Theme.of(context).colorScheme.primary,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(Translations.of(context).loginScreen.welcome,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            fontSize: 42)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                        Translations.of(context).loginScreen.welcomeDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14)),
                    const SizedBox(
                      height: 30,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/signin_illustration.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () => _signIn(context),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                        foregroundColor:
                            Theme.of(context).colorScheme.primaryContainer),
                    child: Text(Translations.of(context).loginScreen.signIn)),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Theme.of(context).colorScheme.onBackground),
                  child: Text(
                    Translations.of(context).loginScreen.termsAndConditions,
                    style:
                        const TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
