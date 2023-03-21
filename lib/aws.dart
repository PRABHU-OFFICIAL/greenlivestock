import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AWS extends StatelessWidget {
  const AWS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animal Welfare Standards"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(
                index == 0
                    ? Icons.local_library
                    : index == 1
                        ? Icons.library_books
                        : index == 2
                            ? Icons.library_add
                            : index == 3
                                ? Icons.build
                                : index == 4
                                    ? Icons.newspaper
                                    : index == 5
                                        ? Icons.book
                                        : index == 6
                                            ? Icons.amp_stories
                                            : index == 7
                                                ? Icons.question_answer
                                                : index == 8
                                                    ? Icons.contact_emergency
                                                    : Icons
                                                        .library_books_rounded,
                color: Colors.red,
              ),
              title: Text(
                index == 0
                    ? 'Animal Welfare Regulations'
                    : index == 1
                        ? 'Animal Welfare Guidelines'
                        : index == 2
                            ? 'Animal Welfare Standards'
                            : index == 3
                                ? 'Animal Welfare Organisation'
                                : index == 4
                                    ? 'Certification Process'
                                    : index == 5
                                        ? 'Resources For Learning'
                                        : index == 6
                                            ? 'Success Stories'
                                            : index == 7
                                                ? 'FAQs'
                                                : index == 8
                                                    ? 'Contact Us'
                                                    : 'Animal Welfare Standards',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                index == 0
                    ? 'Learn about the animal welfare regulations that apply to your animal.'
                    : index == 1
                        ? 'Learn about the animal welfare guidelines that apply to your animal.'
                        : index == 2
                            ? 'Learn about the animal welfare standards that apply to your animal.'
                            : index == 3
                                ? 'Learn about the animal welfare organisation who can help your animal.'
                                : index == 4
                                    ? 'Learn about the certification process for registering your animal.'
                                    : index == 5
                                        ? 'Learn about the resources for learning the applications of different breeding methods to your animal.'
                                        : index == 6
                                            ? 'Learn about the success stories of other owners of animal.'
                                            : index == 7
                                                ? 'Learn about the FAQs for your animal.'
                                                : index == 8
                                                    ? ' Feel free to contact us to know more insights for your animal.'
                                                    : 'Learn about the animal welfare standards that apply to your animal.',
              ),
              onTap: () {
                index == 0
                    ? Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewWidget(
                            controller: WebViewController()
                              ..setJavaScriptMode(JavaScriptMode.unrestricted)
                              ..loadRequest(
                                Uri.parse(
                                    "https://www.aphis.usda.gov/aphis/ourfocus/animalwelfare/SA_Regulations"),
                              ))))
                    : index == 1
                        ? Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WebViewWidget(
                                controller: WebViewController()
                                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                  ..loadRequest(
                                    Uri.parse(
                                        "https://www.avma.org/resources-tools/animal-health-and-welfare/animal-welfare"),
                                  ))))
                        : index == 2
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => WebViewWidget(
                                    controller: WebViewController()
                                      ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                      ..loadRequest(
                                        Uri.parse(
                                            "https://awionline.org/"),
                                      ))))
                            : index == 3
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: WebViewController()
                                          ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                          ..loadRequest(
                                            Uri.parse(
                                                "https://www.hsi.org/"),
                                          ))))
                                : index == 4
                                    ? Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => WebViewWidget(
                                                controller: WebViewController()
                                                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                  ..loadRequest(
                                                    Uri.parse(
                                                        "https://vosd.in/dog-registration-in-india-a-guide-for-pet-parents/"),
                                                  ))))
                                    : index == 5
                                        ? Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WebViewWidget(
                                                        controller:
                                                            WebViewController()
                                                              ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                              ..loadRequest(
                                                                Uri.parse(
                                                                    "http://agtr.ilri.cgiar.org/teaching-methods/teaching-methods"),
                                                              ))))
                                        : index == 6
                                            ? Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WebViewWidget(
                                                            controller:
                                                                WebViewController()
                                                                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                                  ..loadRequest(
                                                                    Uri.parse(
                                                                        "https://www.onegreenplanet.org/animalsandnature/inspiring-animal-success-stories-2019/"),
                                                                  ))))
                                            : index == 7
                                                ? Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            WebViewWidget(
                                                                controller:
                                                                    WebViewController()
                                                                      ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                                      ..loadRequest(
                                                                        Uri.parse(
                                                                            "https://www.animallaw.info/site/frequently-asked-questions-faqs"),
                                                                      ))))
                                                : index == 8
                                                    ? Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                            builder: (context) =>
                                                                WebViewWidget(
                                                                    controller:
                                                                        WebViewController()
                                                                        ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                                          ..loadRequest(
                                                                            Uri.parse("https://segmanta.com/the-top-5-pet-insights-of-2021/"),
                                                                          ))))
                                                    : Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                            builder: (context) =>
                                                                WebViewWidget(
                                                                    controller:
                                                                        WebViewController()
                                                                          ..setJavaScriptMode(JavaScriptMode.unrestricted)
                                                                          ..loadRequest(
                                                                            Uri.parse("https://open.spotify.com/episode/1EGsohqRBL9JVKV8dbSJmL"),
                                                                          ))));
              },
            ),
          );
        },
      ),
    );
  }
}
