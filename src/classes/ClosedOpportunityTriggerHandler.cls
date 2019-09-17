public class ClosedOpportunityTriggerHandler {
    public static void createUpdateOpportunity(List<Opportunity> oppList){
        List<Task> tskList = new List<Task>();
        for(Opportunity opp: oppList){
            if(opp.StageName  == 'Closed Won'){
                Task tsk = new Task();
                tsk.WhatId = opp.id;
                tsk.Subject = 'Follow Up Test Task';
                tskList.add(tsk);
            }
        }
        if(tskList.size()>0){
            Insert tskList;
        }
    }
}