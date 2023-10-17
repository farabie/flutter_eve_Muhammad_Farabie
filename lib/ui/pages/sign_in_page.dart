part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationData registrationData = RegistrationData();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 8,
                  ),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("assets/logo.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Syakila",
                                style: redTextFont.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bakery",
                                style: blueTextFont.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Quick, Fresh, &\nDelicious Cake ",
                        style: blackTextFont.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        nameTextField: "Email*",
                        hintText: "Email",
                        controller: emailController,
                        isPassword: false,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextField(
                        nameTextField: "Password*",
                        hintText: "Password",
                        controller: passwordController,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      CustomButton(
                        nameButton: "Sign In",
                        onTap: () async {
                          SignInSignUpResult result = await AuthServices.signIn(
                            "farabie12@gmail.com",
                            "Farabie123",
                          );

                          if (result.user == null) {
                            print(result.message);
                          } else {
                            print(result.user.toString());
                          }
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ProfilePage(),
                          //     ));
                        },
                      ),
                      const SizedBox(
                        height: defaultMargin,
                      ),
                      Center(
                        child: Text(
                          "Or Continue With",
                          style: blackTextFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: defaultMargin,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CustomCircleSosmed(
                            imageAsset: "assets/logo_facebook.png",
                          ),
                          CustomCircleSosmed(
                            imageAsset: "assets/logo_google.png",
                          ),
                          CustomCircleSosmed(
                            imageAsset: "assets/logo_apple.png",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: defaultMargin,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "already have an account?",
                            style: blackTextFont.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(
                                    registrationData: registrationData,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              " Sign In ",
                              style: blueTextFont.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
