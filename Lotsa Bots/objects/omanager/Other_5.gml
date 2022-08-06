var a = layer_get_all_elements( "Assets" );
for (var i = 0; i < array_length(a); i++;)
{
    if layer_get_element_type(a[i]) == layerelementtype_sequence
    {
        layer_sequence_destroy(a[i])
    }
}
