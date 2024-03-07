#pragma once

#include "OpenGLWindow.h"
#include "Transform.h"
#include <ShaderProgram.h>
#include <memory>
#include <AssetManager.h>

class Scene
{
public:
    Scene(OpenGLWindow* window);
    ~Scene();

    bool init();
    void shutdown();
    void render(float dt);
    void update(float dt);
    OpenGLWindow* getWindow();

    void onKey(Key key, Action action, Modifier modifier);
    void onMouseMove(MousePosition mouseposition);
    void onMouseButton(MouseButton button, Action action, Modifier modifier);
    void onMouseScroll(double xscroll, double yscroll);
    void onFrameBufferResize(int width, int height);
    void create_object(GLuint * va,GLuint * vb ,const float vert[],const int ind[]) const;
private:
    OpenGLWindow* m_window;
    AssetManager m_assets;
    ShaderProgram* m_shader;
    GLuint va_head, vb_head;
    Transform t1, t2, t3, t4 ,t5,t6,t7,t8,t9,t10,GlobalRotation;
    glm::vec3 cameraPos = glm::vec3(0.05f, 0.3f, -1.0f);
    glm::vec3 cameraTarget = glm::vec3(0, 0.0f, 0.0f);
    glm::vec3 cameraUp = glm::vec3(0.0f,1,0.0f);
    glm::mat4 viewMatrix;
    glm::vec3 light_color;
    glm::vec3 ambientLight ;// RGB color of the ambient light (values between 0 and 1)
    float light_intensity;
    glm::vec3 material_specular;        // Specular color of the material (typically (1, 1, 1))
    float material_shininess;
    glm::vec3 light_position;
    glm::vec3 mat_Diffuse;
    glm::vec3 mat_Emissive;

};

