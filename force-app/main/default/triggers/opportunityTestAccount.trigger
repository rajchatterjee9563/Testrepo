trigger opportunityTestAccount on Opportunity (before insert , before update) 
{
    id accid ;
    decimal CurrentOpportunityAmount , TotalopportunityAmount ;
    for(opportunity opp : Trigger.new)
    {
        accid = opp.AccountId ;
        CurrentOpportunityAmount = opp.Amount ;
        system.debug('accid....'+accid);
        system.debug('CurrentOpportunityAmount....'+CurrentOpportunityAmount);
        system.debug('Trigger.new....'+Trigger.new);
    }
    List<account> acclist = new list<account>();
    acclist = [select name,id, (select name,id,stagename,closedate,Amount from opportunities) from Account];
    system.debug('acclist....'+acclist);
    Map<id,List<opportunity>> mapofaccwithopp = New map <id,List<opportunity>>();
    for(Account acc : acclist)
    {
        for(opportunity opp : acc.opportunities)
        {
            if(mapofaccwithopp.containsKey(acc.Id))
            {
                mapofaccwithopp.get(acc.id).add(opp) ;
            }
            else
            {
                mapofaccwithopp.put(acc.Id, new list<opportunity>{opp}) ;
            }
        }
    }
    system.debug('mapofaccwithopp...'+mapofaccwithopp);
    for(id acid : mapofaccwithopp.keySet())
    {
        for(opportunity op : mapofaccwithopp.get(acid))
        {
            TotalopportunityAmount = TotalopportunityAmount + op.Amount ;
            system.debug('TotalopportunityAmount.....'+TotalopportunityAmount);
        }
        for(opportunity op : Trigger.new)
        {
            TotalopportunityAmount = TotalopportunityAmount + op.Amount ;
            if(TotalopportunityAmount > 100000)
            {
                op.adderror('Can not exceed your limit');
            }
        }
    }
}