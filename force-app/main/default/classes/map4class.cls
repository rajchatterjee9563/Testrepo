public class map4class 
{
    public static void mapmethod()
    {
        map<id, contact> conIdAccountMap = New map<id, contact>();
        map<id, contact> cmap = New map<id, contact>();
        List<contact> clist = New List<contact>([select name,id from contact limit 5]);
        system.debug('clist....'+clist);
        for(contact c : clist)
        {
            cmap.put(c.id, c);
        }
         system.debug('cmap.....'+cmap);
    
          map<id, Account> macc = New map<id, Account>();
          List<Account> listacc = New List<Account>([select name, id from Account limit 5]);   
          for(Account acc : listacc)
          {
          	macc.put(acc.id, acc);  
          }
        
        for(id ivalue : cmap.keyset())
        {
            system.debug('ivalue....'+ivalue);
        }
           
     }
}