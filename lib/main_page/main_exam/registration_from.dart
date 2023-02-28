import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  Widget _registrationFormBuilderInputForm(BuildContext context) {
    BuildContext contexta = context;

    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'name',
            decoration: const InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.required(contexta),
          ),
          FormBuilderTextField(
            name: 'email',
            decoration: const InputDecoration(labelText: 'Email'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(context),
              FormBuilderValidators.email(context),
            ]),
          ),
          FormBuilderTextField(
            name: 'password',
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: FormBuilderValidators.required(context),
          ),
          FormBuilderTextField(
            name: 'confirm-password',
            decoration: const InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(context),
              (value) {
                if (_formKey.currentState.fields['password'].value != value) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ]),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                print(_formKey.currentState.value);
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

// flutter_form_builder  FormBuilder useing registration input form widget

  @override
  Widget build(BuildContext context) {
    return _registrationFormBuilderInputForm(context);
/*    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'name',
                decoration: const InputDecoration(labelText: 'Name'),
                validator: FormBuilderValidators.required(context),
              ),
              FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              FormBuilderTextField(
                name: 'password',
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: FormBuilderValidators.required(context),
              ),
              FormBuilderTextField(
                name: 'confirm-password',
                decoration:
                    const InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  (value) {
                    /*
                    if (_formKey.currentState.fields['password'].value !=
                        value) {
                      return 'Passwords do not match';
                    }
                    */
                    return null;
                  },
                ]),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  /*
                  if (_formKey.currentState.validate()) {
                    print(_formKey.currentState.value);
                  }
                  */
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
    */
  }
}
