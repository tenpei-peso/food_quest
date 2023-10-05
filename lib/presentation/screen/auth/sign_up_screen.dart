import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF5E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Gap効いてない気がする...
                const Gap(10),
                const Text(
                  '新規登録',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: 'メールアドレス',
                    controller: authNotifier.emailController,
                    hintText: 'emailを入力してください',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: 'パスワード',
                    isObscure: true,
                    controller: authNotifier.passwordController,
                    hintText: 'passwordを入力してください',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('8文字以上12文字以下の半角英数字'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: '名前',
                    isObscure: true,
                    controller: authNotifier.nameController,
                    hintText: '名前を入力してください',
                  ),
                ),
                const Gap(20),
                SizedBox(
                  height: 64,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () async {
                      await authNotifier.signUp();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF1a0b08),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFFF5E0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    child: const Text(
                      'はじめる',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
