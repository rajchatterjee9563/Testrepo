public class AmountClass 
{
    public static void amountMethod(integer intvar)
    {
        List<opportunity> lst = New List<opportunity>();
        lst = [SELECT Name,Amount From Opportunity];
        system.debug('lst.....'+lst);
               for(opportunity opp : lst )
               {
                  if(opp.Amount == 0)
                  {
                      opp.Amount = intvar ;
                      update opp ;
                  } 
               } 
    }
}