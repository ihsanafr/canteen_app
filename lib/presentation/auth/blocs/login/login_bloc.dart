import 'package:bloc/bloc.dart';
<<<<<<< HEAD
=======
import 'package:canteen_app/data/dataresource/auth_remote_datasource.dart';
import 'package:canteen_app/data/model/response/auth_response_model.dart';
>>>>>>> origin/master
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
<<<<<<< HEAD
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
=======
  final AuthRemoteDatasource authRemoteDatasource;

  LoginBloc(this.authRemoteDatasource) : super(LoginInitial())  {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      final response = await authRemoteDatasource.login(event.email, event.password);

      response.fold(
        (l) => emit(LoginFailure(message: l)),
        (r) => emit(LoginSuccess(authResponseModel: r))
      );
>>>>>>> origin/master
    });
  }
}
