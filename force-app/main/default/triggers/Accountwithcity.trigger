trigger Accountwithcity on Account (after update) 
{
  List<opportunity> opplist = New list<opportunity>();
    for(opportunity opp : [select name,id,stagename,closedate,city__c from opportunity])
    {
        for(Account acc : trigger.old)
        {
            if(acc.city__c == 'Kolkata')
            {
                opp.city__c = 'Pune';
                opplist.add(opp);
                system.debug('opplist....'+opplist);
            }
        }
        update opplist ;
    }
}