import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final double width, height;
  @required
  final int type;
  @required
  final dynamic path;
  final Color color;
  @required
  final BoxShape boxShape;
  final BoxFit boxFit;

  const CustomImageWidget(
      {Key key,
      this.type,
      this.path,
      this.width,
      this.height,
      this.color,
      this.boxShape,
      this.boxFit})
      : super(key: key);

  ImageProvider getImageType() {
    ImageProvider imageProvider;
    switch (type) {
      case 1:
        imageProvider = AssetImage(path);
        return imageProvider;
        break;
      case 2:
        imageProvider = NetworkImage(path);
        return imageProvider;
        break;
      case 3:
        imageProvider = FileImage(path);
        return imageProvider;
      break;
      case 4:
        imageProvider=AssetImage("assets/images/pdf_dummy.png");
    }
    return imageProvider;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          shape: boxShape,
          image: DecorationImage(fit: boxFit, image: getImageType())),
    );
  }
}
