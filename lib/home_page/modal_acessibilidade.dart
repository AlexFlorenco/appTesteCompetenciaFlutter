import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/components/primary_button.dart';

import '../components/switch_button.dart';

class ModalAcessibilidade extends StatefulWidget {
  const ModalAcessibilidade(
      {super.key, required this.isEnabled, required this.setAccessibility});
  final bool isEnabled;
  final ValueChanged<bool> setAccessibility;

  @override
  State<ModalAcessibilidade> createState() => _ModalAcessibilidadeState();
}

class _ModalAcessibilidadeState extends State<ModalAcessibilidade> {
  bool isEnabled = false;
  bool enableButton = false;

  @override
  void initState() {
    super.initState();
    isEnabled = widget.isEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Modo de Acessibilidade',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17),
            child: Row(
              children: [
                const Flexible(
                  child: Text(
                    'Se precisar de tempo extra em decorrência de alguma deficiência, você terá 4,5 minutos para cada pergunta. Esta escolha é confidencial, não será salva e nem será compartilhada com outras pessoas. Saiba mais',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.20),
                  ),
                ),
                SwitchButton(
                  isOn: isEnabled,
                  onChanged: (bool newValue) {
                    setState(() {
                      isEnabled = newValue;
                    });
                    enableButton = !enableButton;
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 34,
            child: PrimaryButton(
              label: 'Aplicar',
              onPressed: enableButton
                  ? () {
                      widget.setAccessibility(isEnabled);
                      Navigator.of(context).pop();
                    }
                  : () {},
              enableButton: enableButton,
            ),
          ),
        ],
      ),
    );
  }
}
