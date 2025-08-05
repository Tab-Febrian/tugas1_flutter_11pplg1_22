import 'package:flutter/material.dart';
import 'login_page.dart';
import 'custom_input_fiels.dart';
import 'Widgets/widget_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String selectedGender = 'Laki-laki';
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomInputField(label: "Nama", controller: nameController,),
            const SizedBox(height: 16),
            CustomInputField(label: "Email / Username", controller: emailController,),
            const SizedBox(height: 16),
            CustomInputField(label: "Password", controller: passwordController, obscureText: true,),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedGender,
              decoration: const InputDecoration(
                labelText: "Jenis Kelamin",
                border: OutlineInputBorder(),
              ),
              items: ['Laki-laki', 'Perempuan'].map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedGender = newValue!;
                });
              },
            ),
            const SizedBox(height: 16),
            ListTile(
              title: Text(
                selectedDate == null
                    ? 'Pilih Tanggal Lahir'
                    : 'Tanggal Lahir: ${selectedDate!.toLocal().toString().split(' ')[0]}',
              ),
              trailing: Icon(Icons.calendar_today),
              onTap: () => _selectDate(context),
            ),
            const SizedBox(height: 20),
            CustomButton(text: "Register", textcolor: Colors.black, onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));})
          ],
        ),
      ),
    );
  }
}
