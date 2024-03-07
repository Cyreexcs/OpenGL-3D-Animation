#version 330 core

in vec3 colorVS;
in vec3 Normal, LightDir ,ViewDir;
uniform vec3 matDiffuse, lightColor;
uniform vec3 lightColorAmbient;
uniform vec3 matEmissive;
uniform vec3 matSpecular;
uniform float matShininess;

//fragment shader output
out vec4 color;
uniform vec3 colorvs;

void main( ){
    // normalize everything necessary //
    vec3 N = normalize(Normal);
    vec3 L = normalize(LightDir);

    float cosa = max(0.0, dot(N,L));
    vec3 DiffuseTerm = colorvs * lightColor;
    color = vec4( DiffuseTerm * cosa, 1.0);

    vec3 AmbientEmissiveTerm = matEmissive +
    colorvs * lightColorAmbient;
    color += vec4(AmbientEmissiveTerm, 0.0);

    vec3 V = normalize(ViewDir);
    vec3 R = normalize(reflect(-L,N));
    float cosBeta = max(0.0, dot(R,V));
    float cosBetak = pow(cosBeta, matShininess);
    vec3 SpecularTerm = matSpecular *
    lightColor;
    color += vec4(SpecularTerm * cosBetak, 0.0);

    //color = vec4(colorVS.x, colorVS.y, colorVS.z, 1.0);
}