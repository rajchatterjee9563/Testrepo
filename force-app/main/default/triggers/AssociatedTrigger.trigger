trigger AssociatedTrigger on Contact (before delete) 
{
  If(trigger.isbefore && trigger.isdelete)
  {
      for(contact con : trigger.old)
      {
          if(con.AccountId != null)
          {
              con.adderror('Associated contact can not delete') ; 
          }
      }
  }
}