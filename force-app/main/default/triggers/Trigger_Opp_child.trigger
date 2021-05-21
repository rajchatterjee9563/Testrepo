trigger Trigger_Opp_child on Opportunity (after insert) {
    Set<Id> setChildIds = new Set<Id>();
    for(Opportunity co : trigger.new) {
        if(co.Opportunity__c != null)
            setChildIds.add(co.Opportunity__c);
    }
    List<Opportunity> oppList = new List<Opportunity>();
    for(Opportunity oppId : [select id FROM Opportunity WHERE id IN: setChildIds]){
        oppId.stageName = 'Closed Lost';
        OppList.add(oppId);
    }
    Try {
        UPDATE OppList;
    }
    catch(DmlException e){
        system.debug('Error in Update');
    }

}