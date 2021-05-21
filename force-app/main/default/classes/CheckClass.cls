public class CheckClass 
{
   public static void deleteMethod(string LeadName)
   {
       List<Lead> lst = New List<Lead>();
       lst = [SELECT Name,Phone From Lead Where name =: LeadName];
       delete lst;
       }
}