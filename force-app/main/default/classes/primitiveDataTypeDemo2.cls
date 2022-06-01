public class primitiveDataTypeDemo2 {
    public void printNewDateTime(){
        date newDate = date.today();
        time newTime = time.newInstance(9, 8, 8, 8);
        time tryTime = time.newInstance(23, 23, 23, 23);
        // 1.create new datetime from date and time
        datetime dt1 = datetime.newInstance(newDate, newTime);
        system.debug('dt is '+ dt1);

        // 2. create datetime using year,month,day time will be midnight
        datetime dt2 = datetime.newInstance(2025, 1, 9);
        system.debug('dt2 is '+ dt2);
        // 3. create datetime using tear,month,day,hour,minute,second
        datetime dt3 = datetime.newInstance(2021, 10, 9, 10, 10, 10);
        system.debug('dt3 is ' + dt3);
        // current  datetime
        datetime currentDT = datetime.now();
        // current user's timezone is considered.
        // when it prints, it prints in GMT
        system.debug('current DT: ' + currentDT);


    }
    // public void printNewTime(){
    //     time myTime = Time.newInstance(18, 20, 2, 30);
    //     system.debug('my time is: ' + myTime);

    //     time meTime = Time.newInstance(19, 31, 2, 20);
    //     system.debug('me time is: ' + meTime);
    // }
    // public void printNewDate(){
    // system.debug('create new Date instance');

    // Date newDate = Date.newInstance(1995, 5, 15);
    // system.debug('new date; ' + newDate);

    // Date newDate2 =Date.newInstance(2022, 02, 02);
    // system.debug('new date 2: ' + newDate2);

    // Date todayDate = Date.today();
    // system.debug('today is: ' + todayDate);
    // }
}
