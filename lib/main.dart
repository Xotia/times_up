import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Times_Up_v2',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  final _random = Random();
  List<String> _words = [
    'Livre',
    'Chaise',
    'Table',
    'Chat',
    'Chien',
    'Arbre',
    'Voiture',
    'Plante',
    'Cheval',
    'Cuisine',
    'Porte',
    'Television',
    'Montagne',
    'Mer',
    'Lampe',
    'Maison',
    'Soleil',
    'Ordinateur',
    'Nourriture',
    'Papier',
    'Bureau',
    'Musique',
    'Chaussure',
    'Verre',
    'Telephone',
    'Route',
    'Feu',
    'Bateau',
    'Lit',
    'Parapluie',
    'Manteau',
    'Avion',
    'Montre',
    'Bouteille',
    'Ballon',
    'Photo',
    'Cafe',
    'Telecommande',
    'Telephone portable',
    'Train',
    'Cheminee',
    'Tapis',
    'Tronc',
    'Poubelle',
    'Portefeuille',
    'Horloge',
    'Crayon',
    'Ciseaux',
    'Brosse a dents',
    'Cle',
    'Fleur',
    'Ampoule',
    'Velo',
    'Couteau',
    'Refrigerateur',
    'Appareil photo',
    'Microphone',
    'Tasse',
    'Canape',
    'Serviette',
    'Chaine stereo',
    'Radio',
    'Parfum',
    'Poupee',
    'Chemise',
    'Veste',
    'Pantalon',
    'Jupe',
    'Robe',
    'Sac a main',
    'Cravate',
    'Chapeau',
    'Lunettes',
    'Gants',
    'Casque',
    'Casquette',
    'Pull',
    'Carte',
    'Clavier',
    'Souris',
    'Enceinte',
    'Ambulance',
    'Pompier',
    'Policier',
    'Avocat',
    'Docteur',
    'Infirmiere',
    'Dentiste',
    'Professeur',
    'Etudiant',
    'Juge',
    'Coiffeur',
    'Electricien',
    'Plombier',
    'Mecanicien',
    'Agriculteur',
    'Cuisinier',
    'Journaliste',
    'Bibliotheque',
    'Facteur',
    'Acteur',
    'Artiste',
    'Danseur',
    'Chanteur',
    'Musicien',
    'Ecrivain',
    'Peintre',
    'Sculpteur',
    'Actrice',
    'Stylo',
    'Bougie',
    'Brosses a cheveux',
    'Ceinture',
    'Bebe',
    'Jouet',
    'Panier',
    'Eponge',
    'Peigne',
    'Horloge',
    'Pendule',
    'Rideau',
    'Table de chevet',
    'Vase',
    'Plateau',
    'Miroir',
    'Coussin',
    'Fourchette',
    'Couteau',
    'Cuillere',
    'Assiette',
    'Verre a vin',
    'Verre a biere',
    'Bocal en verre',
    'Bouilloire',
    'Poêle',
    'Casserole',
    'Grille-pain',
    'Mixeur',
    'Cafetiere',
    'Cuiseur a riz',
    'Micro-ondes',
    'Lave-vaisselle',
    'Lave-linge',
    'Seche-linge',
    'Aspirateur',
    'Fer a repasser',
    'Table a repasser',
    'Etagere',
    'Bibliotheque',
    'Placard',
    'Tiroir',
    'Coffre',
    'Boite',
    'Sac',
    'Valise',
    'Porte-monnaie',
    'Porte-cles',
    'Cartable',
    'Sac a dos',
    'Sac de voyage',
    'Sac de sport',
    'Pochette',
    'Collier',
    'Collier',
    'Bracelet',
    'Boucles doreilles',
    'Bague',
    'Pendentif',
    'Portefeuille',
    'Porte-cartes',
    'Carte didentite',
    'Permis de conduire',
    'Billet',
    'Piece de monnaie',
    'Timbre',
    'Enveloppe',
    'Carte postale',
    'Livret',
    'Magazine',
    'Journal',
    'Roman',
    'Poesie',
    'BD',
    'Manuscrit',
    'Ecran',
    'Cle USB',
    'Disque dur',
    'Souris dordinateur',
    'Ecouteurs',
    'Enceintes',
    'Casque decoute',
    'Cartouche dencre',
    'Papier dimpression',
    'Stylo plume',
    'Marqueur',
    'Feutre',
    'Crayon de couleur',
    'Crayon de papier',
    'Gomme a effacer',
    'Ciseaux a papier',
    'Agrafeuse',
    'Trombone',
    'Ruban adhesif',
    'Colle',
    'Bloc-notes',
    'Cahier',
    'Classeur',
    'Carnet dadresses',
    'Agenda',
    'Calendrier',
    'Reveil',
    'Lampe de bureau',
    'Lampe de chevet',
    'Lampe de poche',
    'Ampoule',
    'Interrupteur',
    'Prise electrique',
    'Cable',
    'Multiprise',
    'Adaptateur',
    'Chargeur',
    'Batterie',
    'Ventilateur',
    'Climatiseur',
    'Chauffage',
    'Radiateur',
    'Couverture',
    'Drap',
    'Oreiller',
    'Housse de couette',
    'Taie doreiller',
    'Serviette de bain',
    'Gant de toilette',
    'Tapis de bain',
    'Rideau de douche',
    'Brosse a cheveux',
    'Peigne',
    'Shampooing',
    'Savon',
    'Gel douche',
    'Deodorant',
    'Dentifrice',
    'Brosse a dents',
    'Rasoir',
    'Mouchoirs en papier',
    'Papier toilette',
    'Essuie-tout',
    'Sac poubelle',
    'Seau',
    'Balai',
    'Pelle',
    'Balayette',
    'Serpillere',
    'Eponge',
    'Chiffon',
    'Desinfectant',
    'Piles',
    'Tournevis',
    'Marteau',
    'Cle a molette',
    'Pince',
    'Scie',
    'Vis',
    'Clou',
    'Echelle',
    'Escabeau',
    'Niveau a bulle',
    'Ruban a mesurer',
    'Boite a outils',
    'Serrure',
    'Cle',
    'Cadenas',
    'Chaine',
    'Mousqueton',
    'Corde',
    'Sangle',
    'Etiquette',
    'Badge',
    'Autocollant',
    'Rape',
    'Epluche-legumes',
    'Ouvre-boite',
    'Decapsuleur',
    'Courir un marathon',
    'Saut à la perche',
    'Nager',
    'Marcher',
    'Danser',
    'Chanter',
    'Lire',
    'Écrire',
    'Parler',
    'Manger',
    'Boire',
    'Dormir',
    'Jouer',
    'Rire',
    'Pleurer',
    'Apprendre',
    'Enseigner',
    'Cuisiner',
    'Travailler',
    'Écouter',
    'Regarder',
    'Saisir',
    'Penser',
    'Rêver',
    'Planifier',
    'Construire',
    'Détruire',
    'Explorer',
  ];
  String current = '';
  var history = <String>[];
  var manche_2 = <String>[];
  var manche_3 = <String>[];
  GlobalKey? historyListKey;

  void getNext() {
    history.insert(0, current);
    var animatedList = historyListKey?.currentState as AnimatedListState?;
    animatedList?.insertItem(0);
    current = _words[_random.nextInt(_words.length)];
    notifyListeners();
  }

  void getNextSavedWord2() {
    manche_2.remove(current);
    if (manche_2.isEmpty) {
      manche_2 = ['Fin de la Manche 2'];
    } else {}
    current = manche_2[_random.nextInt(manche_2.length)];
    notifyListeners();
  }

  void passer2() {
    current = manche_2[_random.nextInt(manche_2.length)];
    notifyListeners();
  }

  void getNextSavedWord3() {
    manche_3.remove(current);
    if (manche_3.isEmpty) {
      manche_3 = ['Fin de la Manche 3'];
    }
    current = manche_3[_random.nextInt(manche_3.length)];
    notifyListeners();
  }

  void passer3() {
    current = manche_3[_random.nextInt(manche_3.length)];
    notifyListeners();
  }

  var favorites = <String>[];

  void toggleFavorite([String? pair]) {
    pair = pair ?? current;
    if (favorites.contains(current)) {
      favorites.remove(current);
      favorites.add(current);
      manche_2.remove(current);
      manche_2.add(current);
      manche_3.remove(current);
      manche_3.add(current);
    } else {
      favorites.add(current);
      manche_2.add(current);
      manche_3.add(current);
    }
    if (current.isEmpty) {
      favorites.remove(current);
      manche_2.remove(current);
      manche_3.remove(current);
    }
    notifyListeners();
  }

  void removeFavorite(String pair) {
    favorites.remove(pair);
    manche_2.remove(pair);
    manche_3.remove(pair);
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = FavoritesPage();
        break;
      case 1:
        page = Manche1();
        break;
      case 2:
        page = Manche2();
        break;
      case 3:
        page = Manche3();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    var mainArea = ColoredBox(
      color: colorScheme.surfaceVariant,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: page,
      ),
    );

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 450) {
            // Use a more mobile-friendly layout with BottomNavigationBar
            // on narrow screens.
            return Column(
              children: [
                Expanded(child: mainArea),
                SafeArea(
                  child: BottomNavigationBar(
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.favorite),
                        label: 'Mots Enregistrés',
                        backgroundColor: Colors.lightGreen,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.filter_1),
                        label: 'Manche 1',
                        backgroundColor: Colors.lightGreen,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.filter_2),
                        label: 'Manche 2',
                        backgroundColor: Colors.lightGreen,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.filter_3),
                        label: 'Manche 3',
                        backgroundColor: Colors.lightGreen,
                      ),
                    ],
                    currentIndex: selectedIndex,
                    onTap: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                )
              ],
            );
          } else {
            return Row(
              children: [
                SafeArea(
                  child: NavigationRail(
                    extended: constraints.maxWidth >= 600,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.favorite),
                        label: Text('Mots Enregistrés'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.filter_1),
                        label: Text('Manche 1'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.filter_2),
                        label: Text('Manche 2'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.filter_3),
                        label: Text('Manche 3'),
                      ),
                    ],
                    selectedIndex: selectedIndex,
                    onDestinationSelected: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ),
                Expanded(child: mainArea),
              ],
            );
          }
        },
      ),
    );
  }
}

class Manche1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: HistoryListView(),
          ),
          SizedBox(height: 10),
          BigCard(pair: pair),
          SizedBox(height: 50),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Supprimer le padding par défaut
                    backgroundColor: Color(0xFF99CC99),
                    minimumSize: Size(
                        double.infinity, 300), // Définir la hauteur du bouton
                  ),
                  onPressed: () {
                    appState.toggleFavorite();
                    appState.getNext();
                  },
                  child: Text(
                    'Suivant',
                    style: TextStyle(
                      color: Colors
                          .white, // Couleur du texte en blanc pour le bouton "Suivant"
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Supprimer le padding par défaut
                    backgroundColor: Color(0xFFFF6666),
                    minimumSize: Size(
                        double.infinity, 300), // Définir la hauteur du bouton
                  ),
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text(
                    'Passer',
                    style: TextStyle(
                      color: Colors
                          .white, // Couleur du texte en blanc pour le bouton "Passer"
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

class Manche2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  appState.getNextSavedWord2();
                },
                child: Text('Suivant'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.passer2();
                },
                child: Text('Passer'),
              ),
            ],
          ),
          //Spacer(flex: 2),
        ],
      ),
    );
  }
}

class Manche3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  appState.getNextSavedWord3();
                },
                child: Text('Suivant'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.passer3();
                },
                child: Text('Passer'),
              ),
            ],
          ),
          //Spacer(flex: 2),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('Pas de mots enregistrés.'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text('Il y a '
              '${appState.favorites.length} mots enregistré(s):'),
        ),
        Expanded(
          // Make better use of wide windows with a grid.
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 400 / 80,
            ),
            children: [
              for (var pair in appState.favorites)
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.delete_outline, semanticLabel: 'Delete'),
                    color: theme.colorScheme.primary,
                    onPressed: () {
                      appState.removeFavorite(pair);
                    },
                  ),
                  title: Text(
                    pair,
                    semanticsLabel: pair,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.pair,
  }) : super(key: key);

  final String pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      elevation: 10,
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedSize(
          duration: Duration(milliseconds: 200),
          // Make sure that the compound word wraps correctly when the window
          // is too narrow.
          child: MergeSemantics(
            child: Wrap(
              children: [
                Text(
                  pair,
                  textAlign: TextAlign.center,
                  style: style.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryListView extends StatefulWidget {
  const HistoryListView({Key? key}) : super(key: key);

  @override
  State<HistoryListView> createState() => _HistoryListViewState();
}

class _HistoryListViewState extends State<HistoryListView> {
  /// Needed so that [MyAppState] can tell [AnimatedList] below to animate
  /// new items.
  final _key = GlobalKey();

  /// Used to "fade out" the history items at the top, to suggest continuation.
  static const Gradient _maskingGradient = LinearGradient(
    // This gradient goes from fully transparent to fully opaque black...
    colors: [Colors.transparent, Colors.black],
    // ... from the top (transparent) to half (0.5) of the way to the bottom.
    stops: [0.0, 0.5],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();
    appState.historyListKey = _key;

    return ShaderMask(
      shaderCallback: (bounds) => _maskingGradient.createShader(bounds),
      // This blend mode takes the opacity of the shader (i.e. our gradient)
      // and applies it to the destination (i.e. our animated list).
      blendMode: BlendMode.dstIn,
      child: AnimatedList(
        key: _key,
        reverse: true,
        padding: EdgeInsets.only(top: 100),
        initialItemCount: appState.history.length,
        itemBuilder: (context, index, animation) {
          final pair = appState.history[index];
          return SizeTransition(
            sizeFactor: animation,
            child: Center(
              child: TextButton.icon(
                onPressed: () {
                  appState.toggleFavorite(pair);
                },
                icon: appState.favorites.contains(pair)
                    ? Icon(Icons.favorite, size: 12)
                    : SizedBox(),
                label: Text(
                  pair,
                  semanticsLabel: pair,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
