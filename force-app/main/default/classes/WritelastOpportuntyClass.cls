public class WritelastOpportuntyClass 
{
    public static void LastMethod(List<opportunity> ops){
        Double Total_AMount = 0 ;
        for(opportunity o : [ select Amount from opportunity where createddate = TODAY
                             AND CreatedBYID = :userinfo.getuserid()]){
                                 Total_Amount = Total_Amount + o.Amount ;
                             }
        for(opportunity opp : ops){
            Total_Amount = Total_Amount + opp.Amount ;
            if(Total_Amount > 100000)
                opp.adderror('You have exceed your daily limit');
        }
    }
}