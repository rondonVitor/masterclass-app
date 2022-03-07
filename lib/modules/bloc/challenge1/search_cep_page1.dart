import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/bloc/challenge1/search_cep_bloc1.dart';

class SearchCepPage1 extends StatefulWidget {
  const SearchCepPage1({Key? key}) : super(key: key);

  @override
  State<SearchCepPage1> createState() => _SearchCepPage1State();
}

class _SearchCepPage1State extends State<SearchCepPage1> {
  final textController = TextEditingController();

  final searchCepBloc = SearchCepBloc1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'cep',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                searchCepBloc.searchCep.add(textController.text);
              },
              child: const Text('Pesquisar'),
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<Map>(
              stream: searchCepBloc.cepResult,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(
                    "${snapshot.error}",
                    style: const TextStyle(color: Colors.red),
                  );
                }

                if (!snapshot.hasData) {
                  return Container();
                }

                final data = snapshot.data!;
                return Text('Cidade: ${data['localidade']}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
