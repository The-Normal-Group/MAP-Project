import '../../models/tournament.dart';
import '../viewmodel.dart';

class UpdateTournamentViewmodel extends Viewmodel {
  Tournament _tournament = Tournament();

  get tournament => _tournament;
  set tournament(value) => _tournament = value;

  get name => _tournament.name;
  set name(value) {
    _tournament.name = value;
  }

  get skillLevel => _tournament.skillLevel;
  set skillLevel(value) {
    _tournament.skillLevel = value;
  }

  get prizePool => _tournament.prizePool;
  set prizePool(value) {
    _tournament.prizePool = value;
  }

  get description => _tournament.description;
  set description(value) {
    _tournament.description = value;
  }
}
