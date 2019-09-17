public class StringArrayTest
{
    public static List<String> generateStringArray(Integer n)
    {
        List<String> strlist = new List<String>();
        for(Integer i =0; i < n; ++i)
            strlist.add('Test ' + i);
        return strlist;
    }
}