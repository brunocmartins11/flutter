import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  const Empresa({Key? key}) : super(key: key);

  @override
  State<Empresa> createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Empresa")),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/detalhe_empresa.png"),
            const SizedBox(
              height: 20,
            ),
            const Text("Sobre a empresa",
                style: TextStyle(fontSize: 20, color: Colors.deepOrange)),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget tellus quis lectus tempus semper. Vivamus id feugiat lorem, vitae tincidunt ante. Vivamus blandit pellentesque ex, placerat hendrerit enim elementum nec. Sed id quam est. Aenean vel ligula lobortis, gravida odio id, porttitor leo. Maecenas vel tellus euismod, eleifend augue quis, sollicitudin magna. In posuere ultrices augue, et ornare magna auctor et. In nibh massa, pellentesque nec malesuada vitae, tempus sit amet tellus. Sed massa nunc, vulputate vitae eros et, consectetur molestie arcu. Curabitur lorem nunc, elementum vel ante ut, mattis varius sem. Praesent condimentum pharetra mauris, ut congue est ultrices quis. Phasellus in magna ipsum. Morbi gravida ligula sit amet efficitur rutrum. Sed dapibus leo ac malesuada bibendum. Morbi non ante convallis, placerat tellus at, venenatis ipsum. Sed tellus nisi, aliquet viverra cursus quis, blandit ac libero. Etiam varius libero sem, aliquam vehicula felis pharetra a. Cras vestibulum bibendum urna vitae vestibulum.",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ],
        ),
      )),
    );
  }
}
