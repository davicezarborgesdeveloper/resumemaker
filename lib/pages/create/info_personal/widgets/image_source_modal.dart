import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/core/ui/helpers/enums.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceModal extends StatelessWidget {
  final Function(Uint8List) onImageSelected;
  final VoidCallback? onExclude;
  const ImageSourceModal({
    required this.onImageSelected,
    this.onExclude,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return BottomSheet(
        onClosing: () {},
        builder: (_) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              child: const Text('Câmera'),
              onPressed: () => getFromSource(TypeSource.camera),
            ),
            TextButton(
              child: const Text('Galeria'),
              onPressed: () => getFromSource(TypeSource.gallery),
            ),
            if (onExclude != null)
              TextButton(
                onPressed: onExclude,
                child: const Text('Excluir'),
              ),
          ],
        ),
      );
    } else {
      return CupertinoActionSheet(
        title: const Text('Selecionar foto para o anúncio'),
        message: const Text('Escolha a origem da foto'),
        cancelButton: CupertinoActionSheetAction(
          onPressed: Navigator.of(context).pop,
          child: const Text(
            'Cancelar',
            style: TextStyle(color: Colors.red),
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Câmera'),
            onPressed: () => getFromSource(TypeSource.camera),
          ),
          CupertinoActionSheetAction(
            child: const Text('Galeria'),
            onPressed: () => getFromSource(TypeSource.gallery),
          ),
          if (onExclude != null)
            CupertinoActionSheetAction(
              onPressed: onExclude!,
              child: const Text('Excluir'),
            ),
        ],
      );
    }
  }

  Future<void> getFromSource(TypeSource typeSource) async {
    final ImagePicker picker = ImagePicker();

    final XFile? xFile = await picker.pickImage(
      source: switch (typeSource) {
        TypeSource.camera => ImageSource.camera,
        TypeSource.gallery => ImageSource.gallery,
      },
    );

    if (xFile == null) return;
    onImageSelected(File(xFile.path).readAsBytesSync());
  }
}
