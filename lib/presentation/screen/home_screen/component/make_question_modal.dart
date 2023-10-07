import 'package:flutter/material.dart';
import 'package:food_quest/domain/notifier/question_task_notifier.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';

class MakeQuestionModal extends HookConsumerWidget {
  const MakeQuestionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColor.firstColor,
      builder: (context) => const MakeQuestionModal(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionTaskNotifier =
        ref.watch(questionTaskNotifierProvider.notifier);

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              //閉じるボタン
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text(
                      'キャンセル',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomButton(
                    text: '受注',
                    variant: ButtonVariant.primary,
                    size: ButtonSize.small,
                    onPressed: () async {
                      await questionTaskNotifier.createQuest().then((value) {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                ],
              ),
              const Gap(32),
              Row(
                children: [
                  CustomPicker(
                    title: '最低予算',
                    options: priceList,
                    controller: questionTaskNotifier.minimumBudgetController,
                  ),
                  const Gap(8),
                  const Text('~'),
                  const Gap(8),
                  CustomPicker(
                    title: '最大予算',
                    options: priceList,
                    controller: questionTaskNotifier.maximumBudgetController,
                  ),
                ],
              ),
              const Gap(16),
              CustomPicker(
                title: 'エリア',
                options: prefectures,
                controller: questionTaskNotifier.prefectureController,
              ),
              const Gap(16),
              CustomDatePicker(
                title: '締切日',
                controller: questionTaskNotifier.deadLineController,
              ),
              const Gap(24),
              TextField(
                controller: questionTaskNotifier.contentController,
                maxLines: 15,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), // 四角い枠を表示
                  labelText: '入力してください', // ラベルテキスト
                ),
                maxLength: 255, // 最大文字数を制限
              ),
            ],
          ),
        ),
      ],
    );
  }
}
