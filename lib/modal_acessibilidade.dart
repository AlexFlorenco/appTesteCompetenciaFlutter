import 'package:flutter/material.dart';

class ModalAcessibilidade extends StatefulWidget {
  const ModalAcessibilidade({super.key});

  @override
  State<ModalAcessibilidade> createState() => _ModalAcessibilidadeState();
}

class _ModalAcessibilidadeState extends State<ModalAcessibilidade> {
  var isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Modo de Acessibilidade',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Row(
              children: [
                const Flexible(
                  child: Text(
                    'Se precisar de tempo extra em decorrência de alguma deficiência, você terá 4,5 minutos para cada pergunta. Esta escolha é confidencial, não será salva e nem será compartilhada com outras pessoas. Saiba mais',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.25),
                  ),
                ),
                Switch(
                    value: isEnabled,
                    activeColor: const Color(0xFF174A34),
                    activeTrackColor: const Color(0xFF3FC787),
                    inactiveThumbColor: const Color(0xFF505050),
                    inactiveTrackColor: const Color(0xFFD3D2D5),
                    onChanged: (bool value) {
                      setState(() {
                        isEnabled = !isEnabled;
                      });
                    })
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ).copyWith(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.disabled)) {
                      return const Color(0xFF393C40);
                    }
                    return const Color((0xFF6FB5F8));
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.disabled)) {
                      return const Color((0xFF75797E));
                    }
                    return const Color((0xFF1D3C5C));
                  },
                ),
              ),
              onPressed: isEnabled
                  ? () {
                      Navigator.of(context).pop();
                    }
                  : null,
              child: const Text(
                'Aplicar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  var isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: isEnabled,
        activeColor: const Color(0xFF174A34),
        activeTrackColor: const Color(0xFF3FC787),
        inactiveThumbColor: const Color(0xFF505050),
        inactiveTrackColor: const Color(0xFFD3D2D5),
        onChanged: (bool value) {
          setState(() {
            isEnabled = !isEnabled;
          });
        });
  }
}
