public class repracticemapclass 
{
    public static void practiceMethod()
    {
        Map<Id,Account> accountMap = new Map<Id, Account>( [Select Id, Name From Account LIMIT 2]);
         System.debug('=== ' + accountMap);
        for (Id id : accountMap.keySet()) {
        System.debug('=== ' + accountMap.get(id).Name);
     }
   }
}