trigger objectTrigger on Opportunity (before update,after update,before insert,after insert,before delete,after delete) 
{
    if(Trigger.isbefore && Trigger.isupdate)
    {
        
        List<Library__c> liblist = New List<Library__c>();
        string str1 ;
        List<opportunity> opplist = New List<opportunity>();
        for(Opportunity opp : Trigger.new)
        {
            str1 = opp.name ;
            Library__c lib = New Library__c();
            lib.name = opp.Name ;
            liblist.add(lib) ;
        }
        system.debug('liblist....'+liblist);
        insert liblist ;
    }
}