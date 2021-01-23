<img src="https://user-images.githubusercontent.com/48018942/95118684-56d93200-0768-11eb-861b-86e38bd5dc4b.png" height="200" width="450" />


Flutter UI/UX Examples  🍟 
==================
[![Repo](https://img.shields.io/badge/-Awesome-181717?style=flat-square&logo=github)](https://github.com/Chromicle/awesome-flutter-ui) [![Flutter](https://img.shields.io/badge/-Flutter-46d1fd?style=flat-square&logo=flutter)](https://flutter.dev/)

Looking for an awesome UI kit for Flutter? 
Here is a curated list of a few awesome Flutter UI design templates to integrate in your Flutter app and save your time on designing widgets. You can check more UI design templates here.


**Show some ❤️ and star the repo to support the project**

## Index 📝 

 1. [Login Page](https://github.com/Chromicle/awesome-flutter-ui/tree/master/awesome_login_page)
 2. [Books App](https://github.com/Chromicle/awesome-flutter-ui/tree/master/book_app_ui)
 3. [Profile Page](https://github.com/Chromicle/awesome-flutter-ui/tree/master/profile_page)
 4. [Food order app](https://github.com/Chromicle/awesome-flutter-ui/tree/master/food_order_app)
 5. [Walkthrough Screen](https://github.com/Chromicle/awesome-flutter-ui/tree/master/walkthrough_screen)


</br>


### 1.  Login Page UI  🍦 


GIF  | Screenshot
------------- | -------------
<img src="https://user-images.githubusercontent.com/48018942/81497942-8120e380-92df-11ea-8cf0-c8669ef47d9b.gif" heigth="550" width="330"/> | <img src="https://user-images.githubusercontent.com/48018942/82414710-1b79e780-9a95-11ea-9922-ddb2a6dab9e1.png" heigth="800" width="700"/>

**Packages in use:**
 1. [flutter_svg](https://pub.dev/packages/flutter_svg)
 2. [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)

**Fonts**

1. [Poppins](https://fonts.google.com/specimen/Poppins)
---
### 2. Books app UI  🍨 

</br>

GIF  | Screenshot
------------- | -------------
<img src="https://user-images.githubusercontent.com/48018942/82415000-80cdd880-9a95-11ea-8e5c-65da78a18fbd.gif" heigth="550" width="330"/> | <img src="https://user-images.githubusercontent.com/48018942/82413366-d359c580-9a92-11ea-9e1d-13474ac6c3aa.png" heigth="800" width="700"/>

**Packages in use:**
1. [flutter_svg](https://pub.dev/packages/flutter_svg)
2. [flutter_staggered_grid_view](https://pub.dev/packages/flutter_staggered_grid_view)

**Fonts**
1. [Poppins](https://fonts.google.com/specimen/Nunito)
---
### 3. Profile Page UI  🍧 

GIF  | Screenshot
------------- | -------------
<img src="https://user-images.githubusercontent.com/48018942/82934546-4094bb80-9fa9-11ea-87e9-ed79af40d46e.gif" heigth="550" width="330"/> | <img src="https://user-images.githubusercontent.com/48018942/82934539-3d99cb00-9fa9-11ea-92b8-e52e3d2eab02.png" heigth="800" width="700"/>
</br>

**Packages in use:**

1. [flutter_svg](https://pub.dev/packages/flutter_svg)
2. [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
3. [line_awesome_flutter](https://pub.dev/packages/line_awesome_flutter)

**Fonts**

1. [Poppins](https://fonts.google.com/specimen/Poppins)
([Custom Fonts](https://flutter.dev/docs/cookbook/design/fonts))
---

### 4. Food Order app  🎂 
GIF  | Screenshot
------------- | -------------
<img src="https://user-images.githubusercontent.com/48018942/83925032-c1229b80-a7a3-11ea-99bd-f2df6169d556.gif" heigth="550" width="330"/> | <img src="https://user-images.githubusercontent.com/48018942/83925036-c4b62280-a7a3-11ea-9139-1415ddc57c20.png" heigth="800" width="700"/>
</br>

**Packages in use:**

1. [flutter_svg](https://pub.dev/packages/flutter_svg)
2. [line_awesome_flutter](https://pub.dev/packages/line_awesome_flutter)
---

### 5. Walkthrough Screen 🎂 

This is a little special... Guess what?\
*I implemented this in Kotlin!* 😱\
This is the walk-through screen, that you can adapt according to  your use, by changing images and number of screens. The top slider will scroll on any amount of screens you add!

GIF  | Screenshot
------------- | -------------
<img src="https://user-images.githubusercontent.com/48018942/89576856-77127080-d84d-11ea-913b-db576702c199.gif" heigth="550" width="330"/> | <img src="https://user-images.githubusercontent.com/48018942/89576865-7aa5f780-d84d-11ea-8d3b-c9f238c372a7.png" heigth="800" width="700"/>

**Resources:**

1. Animations: cubic briezer
2. Primary color: #6C63FF
3. Images: [undraw.co](https://undraw.co/) 

**Fonts**

1. Poppins 


</br>

# Widgets :rocket:

List of well-designed widgets that you will actually need and find useful rather than overwhelming you with a plethora of low-quality ones.

## Index 📝 

 1. [Rounded input field](https://github.com/Chromicle/awesome-flutter-ui/blob/master/widgets/rounded_input_field.dart)
 2. [Flushbar alert service](https://github.com/Chromicle/awesome-flutter-ui/blob/master/widgets/alert_service.dart)
 
</br>

### 1.  Rounded Input field 🍦 
**GIF** \
<img src="https://user-images.githubusercontent.com/48018942/95119656-ec28f600-0769-11eb-8d29-d5d3e54a7aac.gif" height="250" width="450" />


**Use**
```dart
RoundedInputField(
    textEditingController: controllerName,
    hintText: "Your Email",
    icon: Icons.email,
    cursorColor: Colors.black,
    editTextBackgroundColor: Colors.grey[200],
    iconColor: Colors.black,
    onChanged: (value) {
      name = value;
     },
 )
 ```
---

### 2. Flushbar alert service 

To use this widget you have to include one denpendency called [flushbar](https://pub.dev/packages/flushbar) in your `pubspec.yaml`, if you want error alert you have to give `AlertType.error` in type feild same applies to warning \
**GIF** \
<img src="https://user-images.githubusercontent.com/48018942/95247709-d54ed600-0833-11eb-92ab-42615c09a352.gif" height="150" width="500" />

**Use**
```dart
CustomButton(
    text: "Add to Cart",
    onPressed: () {
      AlertService().showAlert(
         context: context,
         message: 'product has been added to cart',
         type: AlertType.success,
         );
     },
 )
```


</br>

## Designs 🌸
These are the list of designs made by adobe xd and figma etc

### Index 📝 

 1. [Camera UI](https://github.com/Chromicle/awesome-flutter-ui/blob/master/designs/camera%20UI.xd)
 2. [Notes UI](https://github.com/Chromicle/awesome-flutter-ui/blob/master/designs/notes.xd)
 3. [Doremon](https://github.com/Chromicle/awesome-flutter-ui/blob/master/designs/doremon.xd)

 

### Camera UI 📷
![Camera UI](https://user-images.githubusercontent.com/48018942/98547824-bf16b880-22be-11eb-8f64-3726013243ea.jpg)


### Notes UI 📝
<img src="https://user-images.githubusercontent.com/48018942/99701836-ff461a00-2aba-11eb-8e87-fb55f51bd590.png" width="700" height="500"/>


### Doremon 🐱
Any doremon fans here? For relaxation I design some of cartoons 

<img src="https://user-images.githubusercontent.com/48018942/98547830-c047e580-22be-11eb-9d8d-1f1a8674fdc7.png" heigth="400" width="400"/>
Thanks for coming here from doremon :xD


### Author(s) ✍️
1. [![Ajay Prabhakar](https://avatars3.githubusercontent.com/u/48018942?v=3&s=32) @chromicle ](https://github.com/chromicle) 

### Looking to contribute? :computer:
Please read [CONTRIBUTING.md][contributor-guide] before writing a pull request. Any and all help we can get is welcome :)

### License :memo:
This repository is licensed under MIT License. Find [LICENSE][license] to know more.

### Note

These examples are open to all kinds of contribution in all of its categories. **dude, they are completely free**😜 \
If you found this project useful, then please consider giving it a :star: on Github and sharing it with your friends via social media⚡. \
Happy Coding 💻.

[contributor-guide]: CONTRIBUTING.md
[license]: LICENSE
