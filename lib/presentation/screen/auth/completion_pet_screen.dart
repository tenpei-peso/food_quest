import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:food_quest/domain/application/monster/notifier/monster_notifier.dart';
import 'package:food_quest/presentation/%20ui_provier/select_monster_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class CompletionPetScreen extends HookConsumerWidget {
  CompletionPetScreen({required this.selectedPet, super.key});

  final int selectedPet;
  final monNameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagePath =
        ref.watch(selectMonsterImageProvider(selectedPet: selectedPet));

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 1),
                    const Text(
                      '選び直す',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '君に決めた!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '名前をつけてあげよう\nこれがあなたの名前になるよ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                imagePath,
                height: 300,
                width: 300,
              ),
              SizedBox(
                width: 280,
                child: TextFormField(
                  controller: monNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'デフォルト名',
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: const Icon(Icons.edit, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  '経験値を得ることで\n成長していろんな姿に変化するよ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomButton(
              text: 'ロカクエをはじめる',
              variant: ButtonVariant.primary,
              onPressed: () async {
                await ref
                      .read(monsterNotifierProvider.notifier)
                      .createMonster(
                        baseMonster: selectedPet,
                        experience: 0,
                        monName: monNameController.text,
                      );
                if(context.mounted){
                  await context.pushRoute(
                    const BottomNavigationRoute(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
