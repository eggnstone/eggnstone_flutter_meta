class MetaStringTools
{
    static String? toUpperCase(String? s)
    {
        String? result = s;

        if (result == null)
            return null;

        result = result.toUpperCase();
        result = result.replaceAll('ß', 'ẞ');

        return result;
    }
}
