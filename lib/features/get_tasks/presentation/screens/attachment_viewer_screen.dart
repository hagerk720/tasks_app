import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AttachmentViewerScreen extends StatelessWidget {
  const AttachmentViewerScreen(this.url);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: url.endsWith('.pdf')
            ? SfPdfViewer.network(url)
            : Image.network(url),
      ),
    );
  }
}
