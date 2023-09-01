import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _key = GlobalKey();
  final mobileController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final confirmPwdController = TextEditingController();
  final dobController = TextEditingController();

  bool isEdit = true;
  bool isPosting = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mobileController.text = '012345678';
    nameController.text = 'Raeka Ong';
    emailController.text = 'abc@gmail.com';
    dobController.text = '1990-01-01';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: MediaQuery.of(context).size.width / 8,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Basic Info",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textAlign: TextAlign.left,
                    autofocus: false,
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username is required';
                      }
                      return null;
                    },
                    obscureText: false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    readOnly: false,
                    decoration: InputDecoration(
                      // suffixIcon: (isEdit)
                      //     ? IconButton(
                      //         icon: Icon(
                      //           Icons.edit_square,
                      //           size: 16,
                      //           color: Theme.of(context).colorScheme.secondary,
                      //         ),
                      //         onPressed: () {
                      //           // Handle edit button action
                      //         },
                      //       )
                      //     : null,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Username',
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (str) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          autofocus: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade200, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade300, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    color: Colors.lightBlue, width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade300, width: 1),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                              hintText: '+ 60'),
                          readOnly: true,
                          keyboardType: TextInputType.number,
                          onSaved: (str) {},
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone number is required';
                            }
                            // setState(() {
                            //   mobileEmpty = false;
                            // });
                            return null;
                          },
                          textAlign: TextAlign.left,
                          autofocus: false,
                          controller: mobileController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          readOnly: !isEdit ? true : false,
                          decoration: InputDecoration(
                            suffixIcon: (isEdit)
                                ? IconButton(
                                    icon: Icon(
                                      Icons.edit_square,
                                      size: 16,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    onPressed: () {
                                      // Handle edit button action
                                    },
                                  )
                                : null,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade200, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: Colors.lightBlue, width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'enter your mobile no.',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (str) {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textAlign: TextAlign.left,
                    autofocus: false,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                    obscureText: false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    readOnly: !isEdit ? true : false,
                    decoration: InputDecoration(
                      suffixIcon: (isEdit)
                          ? IconButton(
                              icon: Icon(
                                Icons.edit_square,
                                size: 16,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              onPressed: () {
                                // Handle edit button action
                              },
                            )
                          : null,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (str) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: dobController,
                    onTap: () {
                      if (isEdit) {
                        showDatePickerDialog(
                            context); // Show the date picker when the field is tapped
                      }
                    },
                    readOnly: true,
                    obscureText: false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      suffixIcon: (isEdit)
                          ? IconButton(
                              icon: Icon(
                                Icons.edit_square,
                                size: 16,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              onPressed: () {
                                showDatePickerDialog(context);
                                // Handle edit button action
                              },
                            )
                          : null,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Date of Birth',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                          FittedBox(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: isPosting
                                  ? null
                                  : () {
                                      // Navigator.pushReplacement(context,
                                      //     MaterialPageRoute(builder: (context) => PageViewing()
                                      //   )
                                      // );
                                      if (_key.currentState!.validate()) {}
                                    },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Edit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showDatePickerDialog(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      // dobController.text =
      //     DateFormat.yMd().format(selectedDate);
      var dateText = selectedDate.toString();
      dobController.text = dateText.split(' ')[0];
    }
  }
}
