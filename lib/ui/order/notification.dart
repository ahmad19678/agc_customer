import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/styles_manager.dart';
import '../../servisers/auth_provider.dart';
import '../registration/login.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('الاشعارات',style: getBoldStyle(color: ColorManager.primary),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset(
                      IconAssets.cart,
                      height: 25.h,
                      width: 25.w,
                      color: ColorManager.primary,
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    onTap: (){
                      Provider.of<AuthProvider>(context,listen: false).logOut();
                      Get.to(Login());
                    },
                    child: IconButton(
                        onPressed: () {},
                        icon:  Icon(
                          Icons.logout,
                          size: 27,
                          color: ColorManager.primary,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 25.h,),
              Container(
                height: 80.h,
                width: 350.w,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], borderRadius: BorderRadius.circular(15.r)),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconAssets.notification,
                          height: 25.h,
                          width: 25.w,
                          color: ColorManager.primary,
                        ),
                        SizedBox(width: 15.w,),
                        Text('هذا النص هو مثال لنص يمكن أن يستبدل')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          IconAssets.time,
                          width: 13.w,
                          height: 13.h,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text('منذ 3 ساعات ',
                            style: getRegularStyle(
                                color: ColorManager.grayTime,
                                fontSize: FontSize.s13)),
                      ],

                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
