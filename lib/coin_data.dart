import 'package:http/http.dart'as http;
import 'dart:convert';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {

  getbitcoindata(String currency)async
  {
    var url = Uri.parse("https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apiKey=B01FA982-FF1D-4513-8BD2-FB8B1ED03D3F");
    http.Response response=await http.get(url);
    var data= response.body;
    var deocode=jsonDecode(data);
    var price=deocode['rate'];
    return price;
  }
  getETHdata(String currency)async
  {
    var url=Uri.parse("https://rest.coinapi.io/v1/exchangerate/ETH/$currency?apiKey=B01FA982-FF1D-4513-8BD2-FB8B1ED03D3F");
    http.Response response=await http.get(url);
    var price=jsonDecode(response.body)['rate'];
    return price;
  }
  getLTCdata(String currency)async
  {
    var url=Uri.parse("https://rest.coinapi.io/v1/exchangerate/LTC/$currency?apiKey=B01FA982-FF1D-4513-8BD2-FB8B1ED03D3F");
    http.Response response=await http.get(url);
    var price=jsonDecode(response.body)['rate'];
    return price;
  }
  
}
