@isTest
public with sharing class AnimalsCalloutsTest {
   @isTest
   private static void testFetchAnimalsSuccess(){
       AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
       test.setMock(HttpCalloutMock.class, am);

       Test.startTest();
       HttpResponse response = AnimalsCallouts.fetchAnimals2();
       Test.stopTest();

       system.assertEquals(200, response.getStatusCode());
   }
}
