import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 8),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AuthScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/finallogo.png",
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'In the midst of winter, \n I found there was, within me,an invincible summer.\n\n - Albert Camus',
              style: TextStyle(
                color: Color.fromARGB(255, 63, 155, 1),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login and Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/login.png',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumberListScreen(),
                  ),
                );
              },
              child: Text('Log In'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                );
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OTPScreen(),
                  ),
                );
              },
              child: Text('Send OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter OTP'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPasswordScreen(),
                  ),
                );
              },
              child: Text('Submit OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'New Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NumberListScreen()));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Account'),
      ),
      body: UserAccountForm(),
    );
  }
}

class UserAccountForm extends StatefulWidget {
  const UserAccountForm({super.key});

  @override
  _UserAccountFormState createState() => _UserAccountFormState();
}

class _UserAccountFormState extends State<UserAccountForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/usericon.png'),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // ignore: unused_local_variable
              String name = _nameController.text;
              // ignore: unused_local_variable
              String email = _emailController.text;
              // ignore: unused_local_variable
              String password = _passwordController.text;
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}

class NumberListScreen extends StatelessWidget {
  const NumberListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick the Day !'),
      ),
      body: NumberList(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Pick the Day'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumberListScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('User Account'),
              onTap: () {
                Navigator.pop(context); //
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserAccountScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NumberList extends StatefulWidget {
  const NumberList({super.key});

  @override
  _NumberListState createState() => _NumberListState();
}

class _NumberListState extends State<NumberList> {
  List<int> numbers = List.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        final number = numbers[index];
        return ListTile(
          title: Text('Day $number'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LightBlueScreen(number),
              ),
            );
          },
        );
      },
    );
  }
}

////////////////LightBlueScreen--------------- task 1 page start //////////////
class LightBlueScreen extends StatelessWidget {
  final int number;

  LightBlueScreen(this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Start Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Challenge 1 !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/sun.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LetsBreatheScreen(),
                  ),
                );
              },
              child: Text('Breath '),
            ),
          ],
        ),
      ),
    );
  }
}

class LetsBreatheScreen extends StatefulWidget {
  const LetsBreatheScreen({super.key});

  @override
  _LetsBreatheScreenState createState() => _LetsBreatheScreenState();
}

class _LetsBreatheScreenState extends State<LetsBreatheScreen> {
  int timerDurationInSeconds =
      300; // 5 seconds for testing, change to 300 for 5 minutes
  bool timerActive = false;
  bool timerEnded = false;

  void startTimer() {
    if (!timerActive) {
      setState(() {
        timerActive = true;
      });

      Timer.periodic(Duration(seconds: 1), (timer) {
        if (timerDurationInSeconds == 0) {
          timer.cancel();
          setState(() {
            timerActive = false;
            timerEnded = true;
          });
        } else {
          setState(() {
            timerDurationInSeconds--;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Breath'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's Breathe for FIVE minutes!!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Image.asset(
              'images/breath.gif',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              timerEnded
                  ? 'Timer completed!'
                  : 'Time left: ${timerDurationInSeconds ~/ 60}:${(timerDurationInSeconds % 60).toString().padLeft(2, '0')}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!timerEnded) {
                  startTimer(); // Start the 5-minute timer
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => yogataskScreen()),
                  );
                }
              },
              child: Text(timerEnded ? 'Task 1: Completed' : 'Start Timer'),
            ),
          ],
        ),
      ),
    );
  }
} ///////

class yogataskScreen extends StatelessWidget {
  const yogataskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 143, 65),
      appBar: AppBar(
        title: Text('Yoga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Challenge 2',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/yoga.png',
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yogaScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 9, 109, 61),
                onPrimary: Colors.white, // Text color
              ),
              child: Text('Yoga '),
            ),
          ],
        ),
      ),
    );
  }
}

class yogaScreen extends StatelessWidget {
  const yogaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 143, 65),
      appBar: AppBar(
        title: Text('Yoga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Let\'s Relax 💚',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WriteAboutItScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 9, 109, 61),
                onPrimary: Colors.white,
              ),
              child: Text('Task 2: completed'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildImageWithText('yoga1', 'Pose  1'),
                  _buildImageWithText('yoga2', 'pose 2'),
                  _buildImageWithText('yoga3', 'pose  3'),
                  _buildImageWithText('yoga4', 'pose  4'),
                  _buildImageWithText('yoga5', 'pose  5'),
                  _buildImageWithText('yoga6', 'pose  6'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imageName, String description) {
    return Column(
      children: [
        Image.asset('images/$imageName.png'),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class WriteAboutItScreen extends StatelessWidget {
  const WriteAboutItScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 3, 105),
      appBar: AppBar(
        title: Text('Let Go'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Challenge 3', // Your title here
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/letgo.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WriteAboutIt2Screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 102, 9, 215),
                onPrimary: Colors.white,
              ),
              child: Text('Task 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class WriteAboutIt2Screen extends StatefulWidget {
  const WriteAboutIt2Screen({super.key});

  @override
  _WriteAboutIt2ScreenState createState() => _WriteAboutIt2ScreenState();
}

class _WriteAboutIt2ScreenState extends State<WriteAboutIt2Screen> {
  TextEditingController feelingController = TextEditingController();
  TextEditingController writeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 3, 105),
      appBar: AppBar(
        title: Text('Completed'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Let\'s Write About It',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Text(
                    'How are you feeling today?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: feelingController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Enter your feelings...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Write how you feel today, tell me everything, don\'t bottle up your feelings.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: writeController,
                    maxLines: 5,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'let me know everything about your day...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HappyMomentScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 102, 9, 215),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Task 3: Completed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HappyMomentScreen extends StatelessWidget {
  const HappyMomentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 201, 28),
      appBar: AppBar(
        title: Text('Happy Moment'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Challenge 4 !', // Your title here
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'images/bee.png',
            width: 200,
            height: 200,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HappyMoment2Screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 223, 147, 24),
                onPrimary: Colors.white,
              ),
              child: Text('Task 4'),
            ),
          ),
        ],
      ),
    );
  }
}

class HappyMoment2Screen extends StatelessWidget {
  final TextEditingController incident1Controller = TextEditingController();
  final TextEditingController incident2Controller = TextEditingController();
  final TextEditingController incident3Controller = TextEditingController();

  HappyMoment2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 201, 28),
      appBar: AppBar(
        title: Text('Happy Moment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What made you happy today?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            OutlineBoxFormField(
              controller: incident1Controller,
              labelText: 'Happy Incident 1',
            ),
            OutlineBoxFormField(
              controller: incident2Controller,
              labelText: 'Happy Incident 2',
            ),
            OutlineBoxFormField(
              controller: incident3Controller,
              labelText: 'Happy Incident 3',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ignore: unused_local_variable
                String incident1 = incident1Controller.text;
                // ignore: unused_local_variable
                String incident2 = incident2Controller.text;
                // ignore: unused_local_variable
                String incident3 = incident3Controller.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tomorrowScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 223, 147, 24),
                onPrimary: Colors.white,
              ),
              child: Text('Task 4: Completed'),
            ),
          ],
        ),
      ),
    );
  }
}

class OutlineBoxFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const OutlineBoxFormField({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class tomorrowScreen extends StatelessWidget {
  const tomorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(170, 129, 35, 230),
      appBar: AppBar(
        title: Text('Future Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Challenge 5',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/daisy.png',
              width: 200,
              height: 200,
            ), // A

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => tomorrow2Screen()));
              },
              child: Text('Task 5'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class tomorrow2Screen extends StatelessWidget {
  TextEditingController _descriptionController = TextEditingController();

  tomorrow2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(170, 129, 35, 230),
      appBar: AppBar(
        title: Text('Future me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tomorrow I'm looking forward to:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _descriptionController,
                maxLines: 5,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Let me know the beauty you wanna see in tomorrow',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ignore: unused_local_variable
                String description = _descriptionController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => greatdayScreen(),
                  ),
                );
              },
              child: Text('Task 5: completed'),
            ),
          ],
        ),
      ),
    );
  }
}

class greatdayScreen extends StatelessWidget {
  const greatdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 115, 214),
      appBar: AppBar(
        title: Text('Yay!!!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mission Accomplished ! Have a great day! ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Center(
              child: Text(
                'You did a great job today!',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/yay.png',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SleepScreen()));
              },
              child: Text('Sleep Well !!!'),
            ),
          ],
        ),
      ),
    );
  }
}

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 149, 169),
      appBar: AppBar(
        title: Text("It's time to go to bed"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '"As the moonlight covers you tonight, \n know that you are loved and cherished."!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/sleep.png',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text('Goodnight'),
            ),
          ],
        ),
      ),
    );
  }
}
