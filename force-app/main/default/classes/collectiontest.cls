global class collectiontest 
{
    public static void listTest()
    {
        list <string> lst = new list<string>();
        lst.add('salesforce');
        lst.add('salesforce');
        lst.add('cpp');
        lst.add('java');
        system.debug('----lst:-'+lst);
        
         list <string> lst1 = new list<string>();
        lst1.add('0017F00001z081Y');
        lst1.add('0017F00001z0CtY');
        lst1.add('0017F00001z03Db');
        lst1.add('0017F00001z05tb');
        lst1.clear();
        Boolean isEmp = lst1.isEmpty();
        //system.debug('----lst:-'+lst);
        //system.debug('----isEmp:-'+isEmp);
             
    }
       public static void setTest()
       {
         set<string> lst = new set<string>();
         lst.add('salesforce');
         lst.add('salesforce');
         lst.add('cpp');
         lst.add('java');
        system.debug('----set value:-'+lst);   
 }  
    
    }