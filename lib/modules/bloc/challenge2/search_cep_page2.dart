import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_bloc2.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_event2.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_state2.dart';

class SearchCepPage2 extends StatefulWidget {
  const SearchCepPage2({Key? key}) : super(key: key);

  @override
  State<SearchCepPage2> createState() => _SearchCepPage2State();
}

class _SearchCepPage2State extends State<SearchCepPage2> {
  final textController = TextEditingController();

  final searchCepBloc = SearchCepBloc2();

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
                searchCepBloc.add(FetchCepEvent(cep: textController.text));
              },
              child: const Text('Pesquisar'),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SearchCepBloc2, SearchCepState>(
              bloc: searchCepBloc,
              builder: (context, state) {
                if (state is SearchCepEmpty) {
                  return Container();
                }

                if (state is SearchCepError) {
                  return Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  );
                }

                if (state is SearchCepLoading) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                state = state as SearchCepSuccess;
                return Text('Cidade: ${state.data['localidade']}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
