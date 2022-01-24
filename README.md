## Custom Textfield
 A customizable gradient Textfield for the developers who wants to style the Texfield of Flutter App.
 
 ## Installation
 
 1. Add the current version of package to your pubspec.yaml 
 
 ```dart
 dependencies:
  custom_textfield: ^0.0.1
  ```
2. Run the following command
 ```dart
flutter pub get
  ```
 3. Import the custom_field package and use it in your Flutter app
  ```dart
import 'package:custom_textfield/custom_textfield.dart';
  ```
 ## Example
 The properties you can modify are listed below
 - height
 - width
 - colors (graident)
 - text
 - radius
 - font style
 ## Sample Code

```dart
 class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      body:  Customtextfield(
              controller: email,
              radius: 40,
              height: 60,
              width: 400,
              colors: const [Colors.grey, Colors.white],
              text: "Email",
              fontColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
      
    );
  }
}
```
## Screenshot
<img width="263" alt="package_image" src="https://user-images.githubusercontent.com/54928117/150742278-689d7c37-7273-407b-b414-d89d7364624d.png">



## Upcoming releases
- [ ] Set prefix icons
- [ ] Set Label text and label style
- [ ] Implementing shadows to Containers

 
