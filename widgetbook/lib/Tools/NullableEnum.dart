class NullableEnum<T>
{
    final T? value;

    const NullableEnum(this.value);

    @override
    String toString()
    => 'NullableEnum{value: $value}';
}
