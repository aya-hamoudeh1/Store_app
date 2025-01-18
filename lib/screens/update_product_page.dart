import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = "UpdateProductPage";
  String? productName, desc, image, price;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
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
                  price = p0;
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
                height: 70,
              ),
              CustomButton(
                text: "Update",
                onTap: () {
                  UpdateProductService().updateProduct(
                    title: productName!,
                    price: price!,
                    desc: desc!,
                    image: image!,
                    category: product.category,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
