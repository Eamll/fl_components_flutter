import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'alex@google.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del Usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Correo del Usuario',
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de la usuario',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true, formProperty: 'password',
                  formValues: formValues,
                  // enableSuggestions: true,
                  // autocorrect: true,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                    hint: Text('Rol'),
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (() {
                    //Ocultar teclado
                    // FocusScope.of(context).requestFocus(FocusNode());
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    //* Imprimir valores del formulario
                    print(formValues);
                  }),
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
