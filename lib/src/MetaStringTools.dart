class MetaStringTools
{
    static String toUpperCase(String s)
    {
        String result = s;

        result = result.toUpperCase();
        result = result.replaceAll('ß', 'ẞ');

        return result;
    }
}
