trigger LeadTrigger on Lead (before insert,after insert,before delete) 
{
    if(Trigger.isinsert && Trigger.isbefore)
    {
        system.debug('new value-----'+Trigger.new);
        for(Lead l: Trigger.new)
        {
            if(l.Industry == 'Banking')
            {
               l.industry.adderror('We do not accept lead from banking'); 
            }  
        }
    }
    if(Trigger.isbefore && Trigger.isupdate)
    {
        //update logic
    }       
}