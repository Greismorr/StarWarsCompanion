part of 'characters_bloc.dart';

@immutable
class CharactersState {
  final bool isLoading;
  final List<Character>? characters;
  final int currentApiPage;

  const CharactersState({
    required this.isLoading,
    required this.characters,
    required this.currentApiPage,
  });

  int get _nextPage => currentApiPage + 1;
  bool get isLastPage => currentApiPage == 9;

  @override
  int get hashCode =>
      isLoading.hashCode ^ characters.hashCode ^ currentApiPage.hashCode;

  // Cria uma nova instância do estado alterando o valor dos atributos
  // declarados como finais.
  CharactersState copyWith({
    bool? isLoading,
    List<Character>? characters,
    int? currentApiPage,
  }) {
    return CharactersState(
      isLoading: isLoading ?? this.isLoading,
      characters: characters ?? this.characters,
      currentApiPage: currentApiPage ?? this.currentApiPage,
    );
  }
}

class InitialCharactersState extends CharactersState {
  const InitialCharactersState()
      : super(
          isLoading: true,
          characters: const [],
          currentApiPage: 1,
        );
}

class FetchCharactersDoneState extends CharactersState {
  const FetchCharactersDoneState({
    required List<Character>? characters,
  }) : super(
          isLoading: false,
          characters: characters,
          currentApiPage: 1,
        );
}
