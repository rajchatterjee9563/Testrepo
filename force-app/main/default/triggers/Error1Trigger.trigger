trigger Error1Trigger on Opportunity (before update) 
{
    string str1 , str2 ;
    List<opportunity> opplist = New List<opportunity>();
    for(opportunity opp : Trigger.old)
    {
        str1 = opp.StageName ;
    }
     for(opportunity op : Trigger.New)
     {
         str2 = op.StageName ;
         
         if(str1 != str2)
         {
             op.adderror('stage can not be changed');           
         }
     }
}