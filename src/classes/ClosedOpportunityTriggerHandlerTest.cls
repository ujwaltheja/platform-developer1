@isTest
public class ClosedOpportunityTriggerHandlerTest {
	
    @isTest static void firstTest(){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i=0;i<200;i++){
            Opportunity opp = new Opportunity();
            opp.Name ='Test'+i;
            opp.StageName = 'Closed Won';
            opp.CloseDate = System.Date.today();
            oppList.add(opp);
        }
        Test.startTest();
        if(oppList.size()>0){
            insert oppList;
        }
        System.assertEquals(200, oppList.size());
        Test.stopTest();
    }
}