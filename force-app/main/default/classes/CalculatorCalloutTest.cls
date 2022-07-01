@isTest
public with sharing class CalculatorCalloutTest {
    @isTest
    private static void doAddTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new calculatorcalloutMockAdd());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.addition(1, 2);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
    @isTest
    private static void doSubtractTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new calculatorcalloutMockSubtract());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.subtraction(10, 7);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
    @isTest
    private static void doDivideTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new calculatorcalloutMockDivide());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.division(10, 7);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
    @isTest
    private static void doMultiplyTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new calculatorcalloutMockMultiply());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.multiplication(10, 7);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
}