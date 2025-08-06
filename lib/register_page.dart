    import 'package:flutter/material.dart';
    import 'widgets/custom_textbox.dart';


    class RegisterPage extends StatefulWidget {
      const RegisterPage({super.key});

      @override
      State<RegisterPage> createState() => _RegisterPageState();
    }

    class _RegisterPageState extends State<RegisterPage> {
      TextEditingController usernameController = TextEditingController();
      TextEditingController passwordController = TextEditingController();
      TextEditingController dateController =  TextEditingController();
      String? gender;
      String dataRegist = "Data registrasi anda adalah :";


      
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text("Register Page"),),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Customtb(
                  hint: "Username atau Email",
                  controller: usernameController,
                  password: false, isNumber: false,
                ),
                Customtb(
                  hint: "Password", 
                  controller: passwordController, 
                  password: true, isNumber: false,
                ),
                TextField(
                  controller: dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "Tanggal Lahir",
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(2050)
                      );
                    if (pickedDate != null){
                      dateController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    }     
                  }
                ),
                const SizedBox(height: 12),
                const Text("Jenis Kelamin:"),
                RadioListTile<String>(
                  title: const Text("Laki-laki"),
                  value: "Laki-laki",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Perempuan"),
                  value: "Perempuan",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      dataRegist = "Data registrasi anda adalah:\n"
                      "Username/Email: ${usernameController.text}\n"
                      "Password: ${passwordController.text}\n"
                      "Tanggal Lahir: ${dateController.text}\n"
                      "Jenis Kelamin: ${gender ?? '-'}";
                    });
                  }, child: Text("Register", style: TextStyle(color: Colors.blueAccent)
                  ),
                  
                  ),
                  
                ),
                const SizedBox(height: 12),
                Text(dataRegist),
              ],
            ),
          ),
        );    
      }
    }