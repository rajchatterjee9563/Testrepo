public class DeletedClass
{
   public static void deleteMethod(string LastNameofAccount)
   {
       List<Account> acc =New List<Account>();
       acc = [SELECT Name,Id From Account where Name =: LastNameofAccount];
       Id Accountid ;
       system.debug('acc....'+acc);
       If(!acc.isempty())
       {
           system.debug('Account does not exist');
       }
       else
       {
           List<contact> conlist = New List<contact>();
           conlist = [SELECT Name,Id From Contact where AccountId =: LastNameofAccount];
           system.debug('conlist....'+conlist); 
           if(conlist.isEmpty()) 
           {
               delete conlist ;
           }
           If(!acc.isempty())
           {
               system.debug('opportunity does not exist');
           }
           else
           {
               List<opportunity> opplist = New List<opportunity>();
               opplist = [SELECT Name,Id From opportunity where AccountId =: LastNameofAccount];
               system.debug('opplist.....'+opplist);
               if(opplist.isempty())
               {
                   delete opplist ;
               }
               
               }
           }
       }
   }