import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voco_test_case/presentation/components/buttons/main_button/main_button.dart';
import 'package:voco_test_case/presentation/views/users_view/components/user_card/user_card.dart';
import 'package:voco_test_case/presentation/views/users_view/controller/users_view_controller.dart';

class UsersView extends ConsumerWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersList = ref.watch(usersViewControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.h),
              ListView.separated(
                itemCount: usersList.data?.length ?? 0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => UserCard(
                  name: "${usersList.data?[index].firstName} ${usersList.data?[index].lastName}",
                  email: usersList.data?[index].email ?? "",
                  imageUrl: usersList.data?[index].avatar ?? "",
                ),
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20.w),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 24.w),
                  Visibility(
                    visible: usersList.page != 1,
                    child: MainButton(
                      buttonText: "Önceki Sayfa",
                      buttonWidth: 150.w,
                      buttonHeight: 40.h,
                      buttonOnPressed: () => ref.read(usersViewControllerProvider.notifier).previousPage(),
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: usersList.page != usersList.totalPages,
                    child: MainButton(
                      buttonWidth: 150.w,
                      buttonHeight: 40.h,
                      buttonText: "Sonraki Sayfa",
                      buttonOnPressed: () => ref.read(usersViewControllerProvider.notifier).nextPage(),
                    ),
                  ),
                  SizedBox(width: 24.w),
                ],
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
