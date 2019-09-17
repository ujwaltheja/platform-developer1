@isTest
public class TestRestrictContactByName {
	
    @isTest static void firstTest(){
        List<Contact> conList = new List<Contact>();
        Test.startTest();
        for(Integer i=0;i<200; i++){
            Contact con = new Contact();
            con.FirstName = 'Test'+i;
            con.LastName = 'INVALIDNAME';
            con.Email = 'test'+i+'@test.com';
            conList.add(con);
        }
        if(conList.size()>0){
            insert conList;
        }
        System.assertEquals(200, conList.size());
        Test.stopTest();
    }
}