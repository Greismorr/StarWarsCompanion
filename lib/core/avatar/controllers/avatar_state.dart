part of 'avatar_bloc.dart';

@immutable
class AvatarState {
  final String? config;
  final bool isLoading;

  const AvatarState({required this.isLoading, this.config});

  // Cria uma nova instância do estado alterando o valor dos atributos
  // declarados como finais.
  AvatarState copyWith({
    String? config,
    bool? isLoading,
  }) {
    return AvatarState(
      config: config ?? this.config,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AvatarState &&
        other.config == config &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode => config.hashCode ^ isLoading.hashCode;
}
