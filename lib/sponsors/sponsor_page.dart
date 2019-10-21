import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "https://res.cloudinary.com/deqriyfhu/image/upload/v1571600362/devfest-2019/sponsors/GdgPuraVida_rbps5t.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "https://res.cloudinary.com/deqriyfhu/image/upload/v1571590219/devfest-2019/sponsors/Modus-Logo-Long-Black_tad2pr.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://res.cloudinary.com/deqriyfhu/image/upload/v1571590218/devfest-2019/sponsors/FIFCO_LOGO_ggci4v.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://res.cloudinary.com/deqriyfhu/image/upload/v1571590219/devfest-2019/sponsors/El_Social_-_Identificador_Gra%CC%81fico-04_vb9ufw.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://res.cloudinary.com/deqriyfhu/image/upload/v1571590219/devfest-2019/sponsors/WhatsApp_Image_2019-10-09_at_9.03.02_AM_dipgjk.jpg",
          ),
        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
