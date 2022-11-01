import 'package:flutter/material.dart';

import '../../commons/feature_toggle/presentation/widgets/toggle_feature_widget.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business'),
      ),
      body: Column(
        children: [
          const ToggleFeatureWidget(
            toggleFeatureId: 'business.label',
            child: Text('Business'),
          ),
          ToggleFeatureWidget(
            toggleFeatureId: 'business.botao1',
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Botao 1')),
          ),
          ToggleFeatureWidget(
            toggleFeatureId: 'business.botao2',
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Botao 2')),
          ),
          ToggleFeatureWidget(
            toggleFeatureId: 'business.botao3',
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Botao 3')),
          ),
        ],
      ),
    );
  }
}
