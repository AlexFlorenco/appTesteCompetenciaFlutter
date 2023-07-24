import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/components/primary_button.dart';

import '../components/switch_button.dart';

class ModalAccessibility extends StatefulWidget {
  const ModalAccessibility(
      {super.key,
      required this.accessibilityIsOn,
      required this.setAccessibilityIsOn});

  final bool accessibilityIsOn;
  final ValueChanged<bool> setAccessibilityIsOn;

  @override
  State<ModalAccessibility> createState() => _ModalAccessibilityState();
}

class _ModalAccessibilityState extends State<ModalAccessibility> {
  bool accessibilityIsOn = false;
  bool enableActionButton = false;

  @override
  void initState() {
    super.initState();
    accessibilityIsOn = widget.accessibilityIsOn;
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
                    style: TextStyle(fontSize: 12, height: 1.20),
                  ),
                ),
                SwitchButton(
                  isOn: accessibilityIsOn,
                  onChanged: (bool newValue) {
                    setState(() {
                      accessibilityIsOn = newValue;
                    });
                    enableActionButton = !enableActionButton;
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
              onPressed: enableActionButton
                  ? () {
                      widget.setAccessibilityIsOn(accessibilityIsOn);
                      Navigator.of(context).pop();
                    }
                  : () {},
              enableButton: enableActionButton,
            ),
          ),
        ],
      ),
    );
  }
}
