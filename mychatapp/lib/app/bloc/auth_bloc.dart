import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mychatapp/models/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnauthenticatedState()) {
    on<AuthEvent>((event, emit) {});
    on<AuthLoginEvent>(_login);
    on<AuthRegisterEvent>(_register);
    on<AuthLogoutEvent>(_logout);
  }

  Future<void> _login(AuthLoginEvent event, Emitter<AuthState> emit) async {
    // firebase ge user di jiber
    emit(
      AuthenticatedState(
        User(email: event.email, password: event.password),
      ),
    );
  }

  Future<void> _register(
      AuthRegisterEvent event, Emitter<AuthState> emit) async {
    // firebase ge user di jiber
    emit(
      AuthenticatedState(
        User(email: event.email, password: event.password),
      ),
    );
  }

  Future<void> _logout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    // firebase ge logout request jiber
    emit(UnauthenticatedState());
  }
}
