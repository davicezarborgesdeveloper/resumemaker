import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../app/core/ui/styles/colors_app.dart';
import '../../../../app/core/ui/styles/text_styles.dart';
import 'image_source_modal.dart';

class PhotoTile extends StatefulWidget {
  final void Function(Uint8List value)? setImage;
  final VoidCallback? delImage;
  final Uint8List? image;
  final double size;
  const PhotoTile({
    this.setImage,
    this.delImage,
    this.image,
    required this.size,
    super.key,
  });

  @override
  State<PhotoTile> createState() => _PhotoTileState();
}

class _PhotoTileState extends State<PhotoTile> {
  Future<void> getFromWeb(Function(Uint8List) onImageSelected) async {
    final FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    final Uint8List? file = result?.files.single.bytes;
    if (file != null) {
      onImageSelected(file);
    }
  }

  void selectImage() async {
    if (kIsWeb) {
      getFromWeb((Uint8List image) {
        widget.setImage!(image);
      });
    } else if (Platform.isAndroid) {
      showModalBottomSheet(
        context: context,
        builder: (_) => ImageSourceModal(
          onImageSelected: (Uint8List image) {
            Navigator.of(context).pop();
            widget.setImage!(image);
          },
          onExclude: widget.image != null
              ? () {
                  Navigator.of(context).pop();
                  widget.delImage!();
                }
              : null,
        ),
      );
    } else {
      showCupertinoModalPopup(
        context: context,
        builder: (_) => ImageSourceModal(
          onImageSelected: (Uint8List image) {
            Navigator.of(context).pop();
            widget.setImage!(image);
          },
          onExclude: widget.image != null
              ? () {
                  Navigator.of(context).pop();
                  widget.delImage!();
                }
              : null,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 1,
        child: Material(
          child: Ink(
            width: widget.size,
            height: widget.size,
            color: Colors.grey.shade200,
            child: InkWell(
              splashColor: ColorsApp.i.primary,
              onTap: selectImage,
              child: widget.image == null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Adicionar Foto',
                          style: context.textStyles.textRegular
                              .copyWith(fontSize: 12),
                        ),
                      ],
                    )
                  : Image.memory(widget.image!),
            ),
          ),
        ),
      ),
    );
  }
}
