trigger prospectTrigger on Prospect__c (after insert,after update) 
{
   List<id> proslist = New list<id>();
    for(prospect__c pro : Trigger.new)
    {
        proslist.add(pro.Type__c) ;
    }
    List<prospect__c> prospeclist = New list<prospect__c>();
    prospeclist = [select name,id, (select name,id,Type__c from prospects__r) from prospect__c where id in : proslist];
    system.debug('prospeclist....'+prospeclist);
}