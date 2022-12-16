public class ValidateAddress {
    //class variables
    public void validateHomeAddress(){
        //method variables
        string houseName = 'Sweetx Home';
        string street= 'Midstream Dr';
        string city = 'Wylie';
        string state = 'Texas';
        string stateISOCode = 'TX';
        string country = 'United States';
        string countryISOCode = 'US';

        integer streetNameLenght = street.length();
        system.debug('Number of characters in the street name is: ' + streetNameLenght);

        Boolean streetContainsHouseName = street.contains(houseName);
        System.debug('Street name contains house name? ' + streetContainsHouseName);

        Boolean streetContainsStateISO = street.containsIgnoreCase(stateISOCode);
        System.debug('Street name contains state ISO code? ' + streetContainsStateISO);

        System.debug(stateISOCode.toUpperCase() + ' - ' + countryISOCode.toUpperCase() + ' - ' +country.toUpperCase() + ' - ' + city.toLowerCase() + ' - ' + state.toLowerCase());

        System.debug('House name and street name together: ' + houseName + ' ' + street);
    }
}

