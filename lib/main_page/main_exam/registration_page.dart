import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return _registrationCommonInputForm();
  }

  // registration common input form widget
  Widget _registrationCommonInputForm() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text('이름'),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '이름을 입력해주세요',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text('아이디'),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '아이디를 입력해주세요',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text('비밀번호'),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '비밀번호를 입력해주세요',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text('비밀번호 확인'),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '비밀번호를 다시 입력해주세요',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
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

  // registration bottom button widget
  Widget _registrationBottomButton() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('등록'),
            ),
          ),
        ],
      ),
    );
  }
}
