import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_form_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = "UpdateProductPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Update Product",
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormTextField(
              hintText: "Product Name",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Description",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Price",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Image",
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomButton(text: "Update"),
          ],
        ),
      ),
    );
  }
}
