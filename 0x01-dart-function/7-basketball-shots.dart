int whoWins(Map<String, int?> teamA, Map<String, int?> teamB) {

  Map<String, int> pointValues = {
    'Free throws': 1,
    '2 pointers': 2,
    '3 pointers': 3,
  };

  int teamAPoints = 0;
  int teamBPoints = 0;

  for (var shotType in teamA.keys) {
    if (pointValues.containsKey(shotType)) {
      int? aShots = teamA[shotType];
      if (aShots != null) {
        teamAPoints += aShots * pointValues[shotType]!;
      }
    }
  }

  for (var shotType in teamB.keys) {
    if (pointValues.containsKey(shotType)) {
      int? bShots = teamB[shotType];
      if (bShots != null) {
        teamBPoints += bShots * pointValues[shotType]!;
      }
    }
  }

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
