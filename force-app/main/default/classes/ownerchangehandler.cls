public class ownerchangehandler 
{
    @InvocableMethod
    public static void ownerHandlerMethod(List<lead> newleads)
    {
        system.debug('newleads.....'+newleads);
       // system.debug('isinsert.....'+isinsert);
        //system.debug('isbefore.....'+isbefore);
       // if(isbefore == true && isinsert == true)
            
            for(lead l : newleads)
            {
                if(l.leadsource == 'web')
                {
                    user u =[select id from user where alias = 'asana'];
                    system.debug('u.....'+u);
                    l.OwnerId = u.id;
                }
            }
        }
    }