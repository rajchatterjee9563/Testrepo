trigger opportunityTestAccount1 on Opportunity (before insert , before update) 
{
  id accid ;
  Decimal currentopportunityAmount = 0  , TotalopportunityAmount = 0 ;
  for(opportunity opp : Trigger.new)
  {
      accid = opp.accountid ; 
      currentopportunityAmount = opp.Amount ;
      system.debug('currentopportunityAmount....'+currentopportunityAmount);
      system.debug('accid....'+accid);
      system.debug('Trigger.new....'+Trigger.new);
  }
    List<account> acclist = New list<account>();
    acclist = [select name,id, (select name,id,stagename,closedate,Amount from opportunities) from Account where id = :accid];
    system.debug('acclist....'+acclist);
    Map<id,List<opportunity>> mapofaccwithopp = New map<id,List<opportunity>>();
    for(Account acc : acclist)
    {
        for(opportunity opp : acc.opportunities)
        {
            if(mapofaccwithopp.containskey(acc.id))
            {
                mapofaccwithopp.get(acc.Id).add(opp);
            }
            else
            {
                mapofaccwithopp.put(acc.Id , New list<opportunity> {opp});
            }
        }
    }
    system.debug('mapofaccwithopp....'+mapofaccwithopp);
    for(id accid : mapofaccwithopp.keyset())
    {
        for(opportunity opp : mapofaccwithopp.get(accid))
        {
            system.debug('opp.Amount....'+opp.Amount);
            if(opp.Amount != Null)
            {
            TotalopportunityAmount = TotalopportunityAmount + opp.Amount ; 
            system.debug('TotalopportunityAmount....'+TotalopportunityAmount);
            }
        }
        for(opportunity op : trigger.new)
        {
           TotalopportunityAmount = TotalopportunityAmount + op.Amount ;
            if(TotalopportunityAmount > 100000)
            op.adderror('You can not exceed your limit');
        }
    }
}