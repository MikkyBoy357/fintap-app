import 'package:dio/dio.dart';
import 'package:fintap/view_models/models/card_model.dart';
import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier {
  String baseUrl = "http://api.fintap.ng/api/v1";
  // String token = "";
  String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhcGkuZmludGFwLm5nIiwiYXVkIjoiYXBpLmZpbnRhcC5uZyIsImlhdCI6MTY5NTQwMTM1OSwiZXhwIjoxNjk3OTkzMzU5LCJkYXRhIjp7InVzZXJpZCI6ImIzYmRmYmIxLThhMGQtNDJmYy04NjgwLTczMDU5NDdiYzY0NiIsImVtYWlsIjoiZW1tYW51ZWxvbnlvMzRAZ21haWwuY29tIiwiZGV2aWNlIjoiM2FjMDI2NWJmMWNjNmU1MWY4NjQ5ZTE0MWY5MGRjMzcifX0.oOyEEr3Sqf0YR4lnwEsZTvSkaYorT2-csDq9rqrYzK4";
  List<CardModel> cards = [];
  Channels cardSwitches =
      Channels(atm: false, pos: false, web: true, mobile: true);

  TextEditingController addressLine1Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  TextEditingController cardBrandController = TextEditingController();

  Future<void> getCards() async {
    await Future.delayed(Duration.zero);
    // token = await getAccessToken() as String;
    print("Token => ${token}");
    try {
      print("Getting Cards...");
      Dio dio = Dio();
      var url = "${baseUrl}/cards";
      var response = await dio.get(
        url,
        options: Options(
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);
      print(response.data.toString());

      if (response.data["data"].toString() != "[]") {
        var tempCards = response.data["data"]["cards"];
        print("TempCards => $tempCards");

        cards.clear();
        for (final card in tempCards) {
          cards.add(CardModel.fromJson(card));
        }
        print("CardsList => $cards");
      } else {
        print("Cards List is Empty");
      }
      print("Cards Gotten Successfully...");
      notifyListeners();
    } on DioError catch (e) {
      print("Error Getting Cards...");
    }
  }

  Future<void> putCardControls(CardModel card) async {
    await Future.delayed(Duration.zero);
    // token = await getAccessToken() as String;
    print("Token => ${token}");
    try {
      print("Putting Card Controls...");
      Dio dio = Dio();
      var url = "${baseUrl}/cards/${card.id}";
      var response = await dio.put(
        url,
        data: cardSwitches.toJson(),
        options: Options(
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);
      print(response.data.toString());

      print("Cards Put Successfully...");
      notifyListeners();
    } on DioError catch (e) {
      print("Error Putting Card Controls...");
    }
  }

  void toggleChannel(int index, bool val, CardModel card) {
    switch (index) {
      case 0:
        cardSwitches.atm = val;
        break;
      case 1:
        cardSwitches.pos = val;
        break;
      case 2:
        cardSwitches.web = val;
        break;
      case 3:
        cardSwitches.mobile = val;
        break;
      default:
        print("Invalid Channel Index");
    }
    print(cardSwitches.toJson());
    notifyListeners();
    putCardControls(card);
  }

  Future<void> requestCard() async {
    await Future.delayed(Duration.zero);
    // token = await getAccessToken() as String;
    print("Token => ${token}");
    try {
      print("Putting Card Controls...");
      Dio dio = Dio();
      var url = "${baseUrl}/cards";
      var body = {
        "line1": addressLine1Controller.text,
        "city": cityController.text,
        "state": stateController.text,
        "country": countryController.text,
        "postalCode": postCodeController.text,
        "card_brand": "Verve",
        "card_type": "physical"
      };
      var response = await dio.post(
        url,
        data: cardSwitches.toJson(),
        options: Options(
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);
      print(response.data.toString());

      print("Cards Put Successfully...");
      notifyListeners();
    } on DioError catch (e) {
      print("Error Putting Card Controls...");
    }
  }
}
