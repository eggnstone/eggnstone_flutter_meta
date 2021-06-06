class MetaStringTools
{
    static String? toUpperCase(String? s)
    {
        if (s == null)
            return null;

        s = s.toUpperCase();
        s = s.replaceAll('ß', 'ẞ');

        return s;
    }
}
