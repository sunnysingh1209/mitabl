part of 'edit_kitchen_profile_cubit.dart';

class EditKitchenProfileState extends Equatable {
  const EditKitchenProfileState(
      {this.phone = const Phone.pure(),
      this.nameKitchn = const Name.pure(),
      this.address = const Name.pure(),
      this.bio = const Name.pure(),
      this.status = FormzStatus.pure,
      this.statusApi = FormzStatus.pure,
      this.serverMessage = '',
      this.noOfSeats = const Phone.pure(),
      this.pathFiles = const [],
      this.days = const [],
      this.daysTiming = const [],
      this.daysTimingOriginal = const [],
      this.selectedPage = 0,
      this.takeAway,
      this.dineIn});

  final Name? nameKitchn;
  final Name? address;
  final Name? bio;
  final Phone phone;
  final Phone noOfSeats;
  final FormzStatus? status;
  final FormzStatus? statusApi;
  final String? serverMessage;
  final List<ImagesCook> pathFiles;
  final List<String>? days;
  final List<Days> daysTiming;
  final List<Days>? daysTimingOriginal;
  final int? selectedPage;
  final bool? dineIn;
  final bool? takeAway;

  EditKitchenProfileState copyWith(
      {int? selectedPage,
      Name? bio,
      bool? dineIn,
      bool? takeAway,
      List<Days>? daysTiming,
      List<Days>? daysTimingOriginal,
      List<String>? days,
      FormzStatus? status,
      List<ImagesCook>? pathFiles,
      FormzStatus? statusApi,
      Name? nameKitchn,
      Name? address,
      Phone? noOfSeats,
      String? serverMessage,
      Phone? phone}) {
    return EditKitchenProfileState(
        bio: bio ?? this.bio,
        daysTimingOriginal: daysTimingOriginal ?? this.daysTimingOriginal,
        dineIn: dineIn ?? this.dineIn,
        takeAway: takeAway ?? this.takeAway,
        selectedPage: selectedPage ?? this.selectedPage,
        daysTiming: daysTiming ?? this.daysTiming,
        pathFiles: pathFiles ?? this.pathFiles,
        statusApi: statusApi ?? this.statusApi,
        status: status ?? this.status,
        address: address ?? this.address,
        nameKitchn: nameKitchn ?? this.nameKitchn,
        noOfSeats: noOfSeats ?? this.noOfSeats,
        serverMessage: serverMessage ?? this.serverMessage,
        phone: phone ?? this.phone);
  }

  @override
  List<Object?> get props => [
        bio,
        daysTimingOriginal,
        takeAway,
        dineIn,
        selectedPage,
        daysTiming,
        pathFiles,
        noOfSeats,
        statusApi,
        address,
        status,
        nameKitchn,
        phone,
        serverMessage
      ];
}
