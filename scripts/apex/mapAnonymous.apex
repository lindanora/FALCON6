map<string, string> mapCntCurrency = new map<string, string>();
// usa ---> dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
System.debug('map of country vs currency: ' + mapCntCurrency);

String IndiaCurrency = mapCntCurrency.get('India');
String country = 'Turkey';
System.debug('country is ' + country);
string TurkeyCurrency = mapCntCurrency.get(country); 

system.debug('India Currency = ' + IndiaCurrency);
System.debug('Turkey Currency = ' + TurkeyCurrency);

list<string> currencyList = mapCntCurrency.values();
system.debug('currencies in map: ' + currencyList);

set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map: ' + countrySet);

for(string eachKey: countrySet){
   string printString = 'Country is ' +eachKey;
   string eachCurrency = mapCntCurrency.get(eachKey);

   printString += ' , its currency is ' + eachCurrency;
   system.debug(printString);
}




