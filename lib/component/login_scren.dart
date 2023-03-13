import 'package:flutter/material.dart';
import 'package:social_network/component/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Đăng nhập',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ReusabelSocialContainer(
                        color: Colors.blue.shade800,
                        asset: 'assets/imgs/img1.jpg',
                        title: 'Đăng nhập với facebook',
                      ),
                      ReusabelSocialContainer(
                        color: Colors.red.shade600,
                        asset: 'assets/imgs/img1.jpg',
                        title: 'Đăng nhập với google',
                      ),
                      Row(
                        children: const [
                          Expanded(child: Divider()),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Hoặc',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Email hoặc số điện thoại',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: myPrimaryColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff8592a1).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Mật khẩu',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: myPrimaryColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff8592a1).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Color(0xff2d3242)),
                              decoration: const InputDecoration(
                                suffix: Icon(
                                  Icons.visibility_off,
                                  color: Colors.red,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_box_outline_blank),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                              'Để đăng ký hoặc sử dụng bạn chấp thuận\n các điều kiện & điều khoản của chúng tôi ?')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: myPrimaryColor,
                        elevation: 6,
                        borderRadius: BorderRadius.circular(8),
                        child: MaterialButton(
                            minWidth: double.infinity,
                            child: Text(
                              'Đăng nhập',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                            ),
                            onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ReusabelSocialContainer extends StatelessWidget {
  final String title, asset;
  final Color color;
  const ReusabelSocialContainer(
      {Key? key, required this.color, required this.title, required this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image(
                image: AssetImage(asset),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
