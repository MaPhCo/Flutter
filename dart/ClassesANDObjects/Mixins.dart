// class Musician extends Performer with Musical {
// }

// class Maestro extends Person with Musical, Aggressive, Demented {
//   Maestro(String maestroName) {
//     name = maestroName;
//     canConduct = true;
//   }
// }

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Musician {
  int a = 0;
}

mixin MusicalPerformer on Musician {}

class SingerDancer extends Musician with MusicalPerformer {}

// abstract mixin class Musician {
//   void playInstrument(String instrumentName);

//   void playPiano() {
//     playInstrument('Piano');
//   }

//   void playFlute() {
//     playInstrument('Flute');
//   }
// }

// class Virtuoso with Musician {
//   // Use Musician as a mixin
//   void playInstrument(String instrumentName) {
//     print('Plays the $instrumentName beautifully');
//   }
// }

class Novice extends Musician {
  // Use Musician as a class
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }
}
