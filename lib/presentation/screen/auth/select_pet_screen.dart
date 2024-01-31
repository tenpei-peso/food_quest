import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/component/button.dart';

@RoutePage()
class SelectPetScreen extends HookConsumerWidget {
  const SelectPetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPet = useState<int>(0);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    '戻る',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              '育てるモンスターを選択してください',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...List.generate(3, (index) {
            final attributes = <String>['火属性', '水属性', '土属性'];

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: ElevatedButton(
                onPressed: () {
                  selectedPet.value = index;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.zero, // Paddingをゼロに設定
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'assets/images/pet${index + 1}.png',
                        height: 110,
                        width: 120,
                      ),
                    ),
                    const SizedBox(width: 30, height: 90),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'モンスター${index + 1}',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              attributes[index],
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 80, height: 50),
                    if (selectedPet.value == index)
                      const Stack(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 140),
          Center(
            child: SizedBox(
              width: 250, // ボタンの横幅を調整
              child: CustomButton(
                text: '次へ',
                onPressed: () async {
                  if(context.mounted){
                    await context.pushRoute(
                      CompletionPetRoute(
                        selectedPet: selectedPet.value,
                        ),
                    );
                  }
                },
                variant: ButtonVariant.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}