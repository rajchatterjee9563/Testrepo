trigger TotalAndmax on Opportunity (after insert) 
{
   id oppid ;
   Decimal opportunityAmount , accMaxAmount ;
   for(opportunity op : trigger.new)
    {
        oppid = op.Accountid ;
        accmaxAmount = op.amount ;
        system.debug('oppid....'+oppid);
        system.debug('accMaxAmount....'+accMaxAmount);
        system.debug('trigger.new....'+trigger.new);
        system.debug('opportunityAmount....'+opportunityAmount);

    }
 }