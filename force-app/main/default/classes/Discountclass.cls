public class Discountclass 
{
   public static void applydiscount(List<book__c>books)
   {
       for(book__c b : books)
       {
           b.price__c *=0.9 ;
       }
   }
}