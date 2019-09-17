trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	
    if((Trigger.isInsert && Trigger.isAfter) || (Trigger.isUpdate && Trigger.isAfter)){
        List<Opportunity> oppList = Trigger.new;
        ClosedOpportunityTriggerHandler.createUpdateOpportunity(oppList);
    }
}