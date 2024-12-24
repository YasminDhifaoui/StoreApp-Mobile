import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/product.dart';
import 'package:store/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget{
  final Product product;
  const DetailsScreen({super.key, required this.product});

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: kPrimaryColor,
    appBar: detailsAppBar(context),
    body: DetailsBody(
      product : product,
    ),
  );
}
AppBar detailsAppBar(BuildContext context){
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      icon: const Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'retour',
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}
}
