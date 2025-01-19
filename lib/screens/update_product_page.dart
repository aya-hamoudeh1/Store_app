import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  static String id = "UpdateProductPage";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                      print("Success");
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      desc: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      category: product.category,
      id: product.id,
    );
  }
}
