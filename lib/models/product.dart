class Product {
  final int? id, price;
  final String title, subTitle, description, image;

  Product({
    this.id,
    this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// List of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Ecouteur sans fils",
    subTitle: "Haute qualité sonore",
    image: "assets/images/airpod.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Téléphone mobile",
    subTitle: "Le téléphone mobile est devenu puissant",
    image: "assets/images/mobile.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Lunettes 3D",
    subTitle: "Pour vous emmener dans le monde virtuel",
    image: "assets/images/class.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Ecouteur",
    subTitle: "Pour de longues heures d'écoute",
    image: "assets/images/headset.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Enregistreur vocal",
    subTitle: "Enregistrez les moments importants autour de vous",
    image: "assets/images/speaker.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Caméras informatiques",
    subTitle: "Haute qualité d'image et résolution",
    image: "assets/images/camera.png",
    description:
        "Lorem Ipsum dollar set amet, consectitor adiba escuing allite, set du iosmode tempor encaedidonteut labor at dollar magna aliquia.",
  ),
];
