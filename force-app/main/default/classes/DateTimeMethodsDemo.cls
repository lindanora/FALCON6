public class DateTimeMethodsDemo {
    // public void calculateAgeInMonths() {
    //     Date birthDate = date.newInstance(2000, 5, 5);
    //     Date todaydate = date.today();
    //     Integer ageInMonths = birthDate.monthsBetween(todayDate);
    //     System.debug('My age is in months: ' + ageInMonths);
    // }
    // public void calculateAgeInDays(){
    //     Date birthDate = date.newInstance(2000, 5, 5);
    //     Date todaydate = date.today();

    //     Integer ageInDays = birthDate.daysBetween(todayDate);
    //     System.debug('My age is in days: ' + ageInDays);
    // }

    // 
    // public void printOfferEnddateTime(){
    //     Datetime dtNow = Datetime.now();
    //     Datetime dtOfferEnd = dtNow.addHours(51);
    //     System.debug('Offer ends on: ' + dtOfferEnd);

    //     Date offerEndDate = dtOfferEnd.date();
    //     System.debug('Offer end date is: '+ offerEndDate);

    // }
    public Boolean leapYearCheck(date dt){
        integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        return lp;
    }
    
}
