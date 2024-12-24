import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/product.dart';
import 'package:store/widgets/details/color_dort.dart';
import 'package:store/widgets/details/product_image.dart';
class DetailsBody extends StatelessWidget{
  final Product product;
  const DetailsBody({super.key,required this.product});
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size :size,
                  image:product.image,

                  ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDort(
                      fillColor:kTextLightColor,
                      isSelected:false,
                    ),
                    ColorDort(
                         fillColor:Colors.blue,
                      isSelected:false,
                    ),
                     ColorDort(
                         fillColor:Colors.red,
                      isSelected:false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: 
                 const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                 child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.bodyMedium,
                  ),
              ),
              Text(
                'prix\$${product.price}',
                style: const TextStyle( 
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(height:  kDefaultPadding),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding*1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text( 
            product.description,
            style: const TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      ],
    );
  }
}