public class accountmap {
      public   map<Integer,string> mapvariable{get;set;} 
    public  void accounttest()
    {  
        mapvariable.put(1, 'salesforce');
        mapvariable.put(2, 'salesforce');
        mapvariable.put(3, 'cpp');
        mapvariable.put(4, 'java');
        //system.debug('------mapvariable:-'+mapvariable); 
        system.debug('------mapvariable for 3 key :-'+mapvariable.get(3));
        
    }
}