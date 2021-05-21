public class SOQLCLASS {

    public static void soqlmethod()
    {
        Map<ID, Account> m = new Map<ID, Account>([SELECT Id, Name FROM Account ]);
        for (ID idKey : m.keyset()) {
        system.debug('----idkey:-'+idkey);
        //system.debug('-----keyset:-'+keyset);    
        Account a = m.get(idKey);
        System.debug(a);
          
}       
    }
}