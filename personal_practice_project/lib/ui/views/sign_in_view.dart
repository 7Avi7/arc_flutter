import 'package:flutter/material.dart';
import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/view_models/sign_in_view_model.dart';
import 'package:test_arc/ui/route_navigation.dart';
import 'package:test_arc/ui/shared/ui_helpers.dart';
import 'package:test_arc/ui/views/base_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SignInViewModel>(
      builder: (context, model, child) => Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Sign In Page'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(UIHelper.bigPadding(context)),
          child: Form(
            key: model.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: const Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Text(
                          'Mobile Number',
                          // "Name",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    // labelText: 'Name',
                    alignLabelWithHint: true,
                    hintText: 'Please Enter Your Mobile Number',
                    hintStyle: const TextStyle(color: Colors.grey),
                    // prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.blueAccent,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 4.5,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 4.5,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.indigoAccent,
                        width: 2.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: model.mobileNumberController,
                  validator: (value) => model.mobileNumberValidator(value!),
                ),
                SizedBox(
                  height: UIHelper.extraBigSpacing(context),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: const Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Text(
                          'Password',
                          // "Name",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    // labelText: 'Name',
                    alignLabelWithHint: true,
                    hintText: 'Please Enter Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    // prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.blueAccent,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 4.5,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 4.5,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.indigoAccent,
                        width: 2.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: model.passwordController,
                  validator: (value) => model.passwordValidator(value!),
                ),
                SizedBox(
                  height: UIHelper.extraBigSpacing(context),
                ),
                model.state == ViewState.idle
                    ? SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (model.formKey.currentState!.validate()) {
                              if (await model.signIn()!) {
                                Navigator.pushNamed(
                                    context, RouteNavigation.bahonPage1);
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.yellow,
                              width: 1,
                            ),
                            elevation: 4,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,

                            // minimumSize: const Size(double.infinity, 10),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text('Sign In'),
                        ),
                      )
                    : const CircularProgressIndicator(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
