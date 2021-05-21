trigger OpportunitieswithAccountTrigger on Opportunity (after insert , before insert, after update, before update) 
{ 
    List<opportunity> opplist = New List<opportunity>();
    for(opportunity opp : trigger.new)
    {
        opportunity op = New opportunity();
        op.name = 'VVS' ;
        op.StageName = 'closed won' ;
        op.Amount = 70000 ;
        opplist.add(op) ;
    }
}