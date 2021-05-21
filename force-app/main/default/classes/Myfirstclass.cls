public class Myfirstclass 
{
    public static void myMethod()
    {
        string str;integer intvar;
        str='raj';
        intvar=8;
        system.debug(intvar +'Hello raj' +str);
    }
        public static void listMethod()
        {
            List<string> lst= New List<string>();
            lst.add('Rajesh');
            lst.add('Java');
            system.debug('lst....'+lst);
        }
           public static void setMethod()
          {
              set<string> setvar=New set<string>();
              setvar.add('computer');
              setvar.add('computer');
              setvar.add('phone');
              setvar.add('Tab');
              system.debug('setvar....'+setvar);
           }    
            
}