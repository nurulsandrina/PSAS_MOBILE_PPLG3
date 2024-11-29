import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) 
  {
  
    return MaterialApp(
      debugShowCheckedModeBanner: 
      false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
class LoginScreen extends
StatelessWidget {
  const LoginScreen ({Key? key}) :
  super (key: key);

  Widget build (BuildContext context)
  {
    final TextEditingController 
    usernameController =
    TextEditingController();
    final TextEditingController
    passwordController =
    TextEditingController();

    return Scaffold(
      backgroundColor: 
      Colors.blue[50],
              body: Center(
                child: 
        SingleChildScrollView(
          padding: const
        EdgeInsets.all (16.0),
        child: Card(
          shape:
        RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(16.0),
        ),  
        elevation: 8,
        child: Padding (
          padding: const
        EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize:
          MainAxisSize.min,
          children : [
            const Text(
              'Login',
              style:
              TextStyle(
                fontSize: 24,
                fontWeight:
                FontWeight.bold,
                color:
                Colors.blue,
              ),
              ),
              const
              SizedBox(height: 20),
              TextField(
                controller:
                usernameController,
                decoration:
                const InputDecoration(
                 labelText:
                 'Username',
                 border:
                 OutlineInputBorder(), 
                 prefixIcon:
                 Icon(Icons.person),
              ),
              ),
              const
              SizedBox(height: 16),
              TextField(
                controller:
                passwordController,
                decoration:
                const InputDecoration(
                  labelText:
                  'password',
                  border:
                  OutlineInputBorder(),
                  prefixIcon:
                  Icon(Icons.lock),
                ),
                obscureText:
                true 
              ),
              const 
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final username
                  =usernameController.text;
                  final password
                  =passwordController.text;
                  // simulasi validasi login 
                  if (username== 'admin'&& password=='12345'){
                    ScaffoldMessenger.of(context). showSnackBar(
                      const
                      SnackBar(content: Text('invalid credentials')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const
                      SnackBar(content: Text('invalid credentials')),
                  );
                  }
                },
                style:
                ElevatedButton.styleFrom(
                  minimumSize:
                  const Size(double.infinity, 50),
                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                ),
                child: const
                Text('Login'),
              ),
           ],
        ),
        ),
        ),
        ),
        ),
       );
  }
}

