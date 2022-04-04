import 'package:flutter/material.dart';

/* Widgets Personalizados */
import 'package:widgets_components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Daniel',
      'last_name': 'Yepez',
      'email': 'danipez.02@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs Y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: <Widget>[
                CustomInputField(
                  labelText: 'Nombre',
                  helperText: 'Solo Letras',
                  hintText: 'Nombre Del Usuario',
                  icon: Icons.groups_rounded,
                  suffixIcon: Icons.assignment_ind_outlined,
                  keyBoardType: TextInputType.text,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  helperText: 'Solo Letras',
                  hintText: 'Apellido Del Usuario',
                  icon: Icons.groups_rounded,
                  suffixIcon: Icons.assignment_ind_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'E-mail',
                  // helperText: 'Solo Letras',
                  hintText: 'E-mail Del Usuario',
                  icon: Icons.email_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  keyBoardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  // helperText: 'Solo Letras',
                  hintText: 'Passowrd Del Usuario',
                  icon: Icons.password_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  // value: null, No Funciona Si Agregamos Un Valor
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Dev', child: Text('Dev')),
                    DropdownMenuItem(value: 'Scrum', child: Text('Scrum')),
                    DropdownMenuItem(value: 'Master', child: Text('Master')),
                  ],
                  onChanged: (value) {
                    // print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text('Guardar', textAlign: TextAlign.center),
                  ),
                  onPressed: () {
                    //* Para Minimizar El Teclado Cuando Envie Los Datos Del Formulario
                    // FocusScope.of(context).requestFocus(FocusNode());

                    //* Para Validar Todos Los Campos Del Formulario Al Tiempo
                    if (!myFormKey.currentState!.validate()) {
                      // print('Formulario No Válido');
                      return;
                    }

                    //* Imprimir Valores Predeterminados Del Map
                    // print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
