public class MyCity {
    public String favoriteCafe = '';
    public String favoritePark = '';
    public String favoriteMall = '';
    public String favoriteStore = '';

    public String myFavoriteLocations(String city){
        System.debug('My favorite cafe is ' + favoriteCafe);
        System.debug('My favorite park is ' + favoritePark);
        System.debug('My favorite mall is ' + favoriteMall);
        System.debug('My favorite store is ' + favoriteStore);

        return city;
    }
    
}
