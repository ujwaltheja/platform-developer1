@isTest
public class TestVerifyDate {
	
    @isTest static void firstTest(){
        Date test1 = System.Date.today();
        Date test2 = System.Date.today(); //2019-09-11 00:00:00
        Test.startTest();
        VerifyDate.CheckDates(test1, test2);
        Test.stopTest();
    }
    @isTest static void secondTest(){
        Date test1 = System.Date.today();
        Date test2 = Date.valueOf('2019-07-11 00:00:00'); //2019-09-11 00:00:00
        Test.startTest();
        VerifyDate.CheckDates(test1, test2);
        Test.stopTest();
    }
}