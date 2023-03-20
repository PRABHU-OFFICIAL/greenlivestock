import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({Key? key, required this.url}) : super(key: key);
  final String url ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Learn Agro Resources"),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: SfPdfViewer.network(url,
            enableDoubleTapZooming: true,
            enableTextSelection: true,
            canShowHyperlinkDialog: true,
            canShowScrollHead: true,
            canShowScrollStatus: true,
            canShowPaginationDialog: true,
            pageLayoutMode: PdfPageLayoutMode.continuous,
          )),
    );
  }
}
