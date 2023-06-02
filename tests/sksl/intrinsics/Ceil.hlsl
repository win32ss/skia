cbuffer _UniformBuffer : register(b0, space0)
{
    float4 _10_testInputs : packoffset(c0);
    float4 _10_colorGreen : packoffset(c1);
    float4 _10_colorRed : packoffset(c2);
};


static float4 sk_FragColor;

struct SPIRV_Cross_Output
{
    float4 sk_FragColor : SV_Target0;
};

float4 main(float2 _24)
{
    float4 expected = float4(-1.0f, 0.0f, 1.0f, 3.0f);
    bool _51 = false;
    if (ceil(_10_testInputs.x) == (-1.0f))
    {
        float2 _43 = ceil(_10_testInputs.xy);
        _51 = all(bool2(_43.x == float4(-1.0f, 0.0f, 1.0f, 3.0f).xy.x, _43.y == float4(-1.0f, 0.0f, 1.0f, 3.0f).xy.y));
    }
    else
    {
        _51 = false;
    }
    bool _63 = false;
    if (_51)
    {
        float3 _54 = ceil(_10_testInputs.xyz);
        _63 = all(bool3(_54.x == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.x, _54.y == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.y, _54.z == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.z));
    }
    else
    {
        _63 = false;
    }
    bool _72 = false;
    if (_63)
    {
        float4 _66 = ceil(_10_testInputs);
        _72 = all(bool4(_66.x == float4(-1.0f, 0.0f, 1.0f, 3.0f).x, _66.y == float4(-1.0f, 0.0f, 1.0f, 3.0f).y, _66.z == float4(-1.0f, 0.0f, 1.0f, 3.0f).z, _66.w == float4(-1.0f, 0.0f, 1.0f, 3.0f).w));
    }
    else
    {
        _72 = false;
    }
    bool _76 = false;
    if (_72)
    {
        _76 = true;
    }
    else
    {
        _76 = false;
    }
    bool _83 = false;
    if (_76)
    {
        _83 = all(bool2(float2(-1.0f, 0.0f).x == float4(-1.0f, 0.0f, 1.0f, 3.0f).xy.x, float2(-1.0f, 0.0f).y == float4(-1.0f, 0.0f, 1.0f, 3.0f).xy.y));
    }
    else
    {
        _83 = false;
    }
    bool _90 = false;
    if (_83)
    {
        _90 = all(bool3(float3(-1.0f, 0.0f, 1.0f).x == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.x, float3(-1.0f, 0.0f, 1.0f).y == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.y, float3(-1.0f, 0.0f, 1.0f).z == float4(-1.0f, 0.0f, 1.0f, 3.0f).xyz.z));
    }
    else
    {
        _90 = false;
    }
    bool _93 = false;
    if (_90)
    {
        _93 = true;
    }
    else
    {
        _93 = false;
    }
    bool4 _94 = _93.xxxx;
    return float4(_94.x ? _10_colorGreen.x : _10_colorRed.x, _94.y ? _10_colorGreen.y : _10_colorRed.y, _94.z ? _10_colorGreen.z : _10_colorRed.z, _94.w ? _10_colorGreen.w : _10_colorRed.w);
}

void frag_main()
{
    float2 _20 = 0.0f.xx;
    sk_FragColor = main(_20);
}

SPIRV_Cross_Output main()
{
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.sk_FragColor = sk_FragColor;
    return stage_output;
}
