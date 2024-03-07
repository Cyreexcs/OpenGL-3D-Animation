#version 330 core

layout(location = 0) in vec3 vertex;
layout(location = 1) in vec3 vertex_normal;


uniform vec3 lightPos;
uniform mat4 modelMatrix;
uniform mat4 view;
uniform mat4 projection;

out vec3 colorVS;
out vec3 Normal, LightDir,ViewDir;

void main(){
    //colorVS=colorRGB;
    //gl_Position =projection *view * modelMatrix * vec4(pos.x, pos.y,pos.z, 1.0);
    vec4 v = vec4(vertex, 1.0);
    colorVS = vertex;
    gl_Position = projection * view * modelMatrix * v;
    vec4 n = vec4(vertex_normal, 0.0);
    mat4 normalMat = transpose(inverse(view * modelMatrix));
    Normal = (normalMat * n).xyz;
    vec4 lp = view * vec4(lightPos, 1.0);
    vec4 P = (view * modelMatrix * v);
    LightDir = (lp - P).xyz;
    ViewDir = -P.xyz;
}