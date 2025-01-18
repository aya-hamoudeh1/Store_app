import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = "UpdateProductPage";
  String? productName, desc, image;
  int? price;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                onChanged: (p0) {
                  productName = p0;
                },
                hintText: "Product Name",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (p0) {
                  desc = p0;
                },
                hintText: "Description",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                onChanged: (p0) {
                  price = int.parse(p0);
                },
                hintText: "Price",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (p0) {
                  image = p0;
                },
                hintText: "Image",
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomButton(text: "Update"),
            ],
          ),
        ),
      ),
    );
  }
}
