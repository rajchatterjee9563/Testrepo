public class ColourTestclass 
{
    public static void colourMethod()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('A','United States'));
        options.add(new SelectOption('C','Canada'));
        options.add(new SelectOption('A','Mexico'));
        //System.debug('Before sorting: ' + options);
        options.sort();
        System.debug('After sorting: ' + options);     
    }
}