trigger Cityaccounttrigger on Account (before insert) 
{
    for(Account acc : Trigger.New)
    {
      if(acc.city__C != null)
      {
          acc.billingcity = acc.city__C ;
          system.debug('acc....'+acc) ;
      }
    }
}