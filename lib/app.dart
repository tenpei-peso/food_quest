import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';
import 'package:food_quest/presentation/screen/home_screen/home_screen.dart';
import 'package:food_quest/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(supabaseAuthProvider);
    final isSignIn = useState(false);

    useEffect(
      () {
        Future<void> fetchData() async {
          auth.onAuthStateChange.listen((event) {
            if (event.event == AuthChangeEvent.signedIn) {
              isSignIn.value = true;
            } else {
              isSignIn.value = false;
            }
          });
        }

        fetchData();
        return null;
      },
      const [],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      home: isSignIn.value ? const HomeScreen() : const SignUpScreen(),
    );
  }
}
