import 'package:iot_app/providers/setup/setup_state_provider.dart';
import 'package:utopia_hooks/utopia_hooks.dart';

void useAsyncEffectAfterSetup(Future<void> Function() effect, [List<Object>? keys]) {
  final appInitializationState = useProvided<SetupState>();
  useSimpleEffect(() async {
    if (appInitializationState.isInitialized) await effect();
  }, [appInitializationState, ...?keys]);
}
