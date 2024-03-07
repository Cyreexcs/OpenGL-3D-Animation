#include "Scene.h"
#include "Cube.h"
#include <AssetManager.h>

Scene::Scene(OpenGLWindow * window) :
        m_window(window)
{
    assert(window != nullptr);
}

Scene::~Scene()
{}

bool Scene::init()
{
    try
    {
        //Load shader
        m_assets.addShaderProgram("shader", AssetManager::createShaderProgram("assets/shaders/vertex.glsl", "assets/shaders/fragment.glsl"));
        m_shader = m_assets.getShaderProgram("shader");
        m_shader->use();
        // lives on the CPU

        //cube Transformation
        GlobalRotation=Transform();

        t1= Transform();
        t1.rotate(glm::vec3(0, 0.05, 0));
        t1.translate(glm::vec3(0,0.7 ,0));
        t1.scale(glm::vec3(0.15,0.2,0.15));
        create_object(&va_head, &vb_head, cubeVert,cubeInd);

        //body transformation to center


        t2.scale(glm::vec3(0.3,0.68,0.35));
        t2.translate(glm::vec3(0,0.15 ,0));
        t2.rotate(glm::vec3(0.06, 0.03, 0));

        //legs transformation         t4.translate(glm::vec3(-2,-0.76,0));

        t3.scale(glm::vec3(0.15,0.44,0.18));
        t4.translate(glm::vec3(-0.1,-0.57,0));
        t4.rotate(glm::vec3(0.05, 0.01, 0));


        t5.translate(glm::vec3(0.1,-0.57,0));
        t5.rotate(glm::vec3(0.05, 0.01, 0));
        //arms

        t7.translate(glm::vec3(-4,1.1,0));
        t6.scale(glm::vec3(0.064,0.3,0.15));
        t7.rotate(glm::vec3(-0.005, 0.005, 0));
        //arm 2

        t8.translate(glm::vec3(4,1.1,0));
        t8.rotate(glm::vec3(0, 0.005, 0));
        //scale: t6
        //arm3

        t9.translate(glm::vec3(4,0,0));
        t9.rotate(glm::vec3(0, 0.005, 0));
        //scale: t6
        //arm4
        t10.translate(glm::vec3(-4,0,0));
        t10.rotate(glm::vec3(0, 0.005, 0));

        //glm::lookAt(cameraPos, cameraTarget, cameraUp);
        viewMatrix = glm::lookAt(glm::vec3(0,0,0),glm::vec3(0,0,0),glm::vec3 (0,0,0));
        m_shader->setUniform("view", viewMatrix, false);

        mat_Diffuse=glm::vec3(0,1,0.4);
        m_shader->setUniform("matDiffuse", mat_Diffuse);
        mat_Emissive=glm::vec3(1,0.78,0.2);
        m_shader->setUniform("matEmissive", mat_Emissive);
        float fov = 85.0f;
        float aspectRatio = 1.2f ;
        float nearPlane = 0.55f;
        float farPlane = 80.0f;
        glm::mat4 projectionMatrix = glm::perspective(glm::radians(fov), aspectRatio, nearPlane, farPlane);
        m_shader->setUniform("projection", projectionMatrix, false);

        light_position = glm::vec3 (0.0f, 0.60f, 0.2f);
        light_color = glm::vec3(1.0f, 1.0f, 1.0f); // White light
        light_intensity = 9.0f; // Full intensity
        ambientLight = glm::vec3(0.87f, 0.2f, 0.4f); // Ambient light
        material_specular = glm::vec3(1.0f, 1.0f, 1.0f); // White specular material
        material_shininess = 100.0f; // Specular shininess

        glEnable(GL_DEPTH_TEST);


        return true;
    }
    catch (std::exception& ex)
    {
        throw std::logic_error("Scene initialization failed:\n" + std::string(ex.what()) + "\n");
    }
}

void Scene::create_object(GLuint* va,GLuint *vb,const float vert[],const int ind[]) const {

    glGenVertexArrays(1, va);
    glBindVertexArray(*va);
    glGenBuffers(1, vb);
    glBindBuffer(GL_ARRAY_BUFFER, *vb);
    glBufferData(GL_ARRAY_BUFFER, 72*sizeof(float), vert, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, false, 36, (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, false, 36, (void*)12);
    glEnableVertexAttribArray(1);

    glVertexAttribPointer(2, 3, GL_FLOAT, false, 36, (void*)24);
    glEnableVertexAttribArray(2);
    GLuint iboID;
    glGenBuffers(1, &iboID); //only works after glGenVertexArrays();
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iboID);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, 36*sizeof(int), ind, GL_STATIC_DRAW);
}

void Scene::render(float dt)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    m_shader->use();
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);

    glBindVertexArray(va_head);
    Transform swing_left=Transform();
    Transform swing_right=Transform();


    Transform swing_down=Transform();
    Transform swing_down_2=Transform();
    static double p=1;
    double colorsini=sin((p++)*0.001 +1.5 )/3;
    double colorcosi=cos((p++)*0.001 +2 )/3;

    static float winkel = 0, winkel_down_2 =0;
    static float zeit =0;
    zeit +=dt;
    winkel = sin(zeit) * 0.25;
    static float winkel_down =0;
    winkel_down=(sin(zeit) +1 )* 0.35 ;
    winkel_down_2=(cos(zeit) +1 )* 0.35 ;
    swing_left.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(winkel, 0, 0));
    swing_right.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(-winkel, 0, 0));

    swing_down.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(-winkel_down, 0, 0));
    swing_down_2.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(-winkel_down_2, 0, 0));


    m_shader->setUniform("lightPos", light_position);
    // Set light color
    m_shader->setUniform("lightColor", light_color);
    // Set light intensity
    m_shader->setUniform("light.intensity", light_intensity);

    m_shader->setUniform("lightColorAmbient", ambientLight);
    // Set material specular
    m_shader->setUniform("matSpecular", material_specular);
    // Set material shininess
    m_shader->setUniform("matShininess", material_shininess);

    GlobalRotation.rotate(glm::vec3(0, 0 , 0));

    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t1.getTransformMatrix(), false);
    m_shader->setUniform("colorvs",glm::vec3 (colorsini,colorcosi,0.2) ) ;
    glDrawElements(GL_TRIANGLES,36 ,GL_UNSIGNED_INT,0);

    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t2.getTransformMatrix(), false);
    m_shader->setUniform("colorVs",glm::vec3 (colorsini,0.2,colorsini) ) ;
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);

    //leg left
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t4.getTransformMatrix() * t3.getTransformMatrix() * swing_left.getTransformMatrix(), false);
    m_shader->setUniform("colorVs",glm::vec3 (colorsini,colorcosi,0.2) ) ;
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);

    //leg right
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t5.getTransformMatrix() * t3.getTransformMatrix() * swing_right.getTransformMatrix() , false);
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
    //arm top left
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t6.getTransformMatrix() * t7.getTransformMatrix() * swing_right.getTransformMatrix(), false);
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
    //arm top right
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t6.getTransformMatrix() * t8.getTransformMatrix() * swing_left.getTransformMatrix(), false);
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
    //arm down right
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t6.getTransformMatrix() * t9.getTransformMatrix() * swing_down_2.getTransformMatrix() * swing_left.getTransformMatrix() , false);
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
    //arm down left
    m_shader->setUniform("modelMatrix", GlobalRotation.getTransformMatrix() * t6.getTransformMatrix() * t10.getTransformMatrix() * swing_down.getTransformMatrix() * swing_right.getTransformMatrix() , false);
    glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
    //glDrawArrays(GL_TRIANGLES,0,5);
    m_shader->setUniform("view", viewMatrix, false);

    glBindVertexArray(0);
}

void Scene::update(float dt)
{


    float cameraSpeed = 1.0f;
    const float lightSpeed = 1.5;

    glm::vec3 cameraDirection(0.0f);
    glm::vec3 lightDirection(0.0f);

    if (m_window->getInput().getKeyState(Key::D) == KeyState::Pressed) {
        cameraDirection.x += cameraSpeed;
    }
    if (m_window->getInput().getKeyState(Key::A) == KeyState::Pressed) {
        cameraDirection.x -= cameraSpeed;
    }
    if (m_window->getInput().getKeyState(Key::W) == KeyState::Pressed) {
        cameraDirection.y += cameraSpeed;
    }
    if (m_window->getInput().getKeyState(Key::S) == KeyState::Pressed) {
        cameraDirection.y -= cameraSpeed;
    }
    if (m_window->getInput().getKeyState(Key::E) == KeyState::Pressed) {
        cameraDirection.z += cameraSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Q) == KeyState::Pressed) {
        cameraDirection.z -= cameraSpeed;
    }

    if (m_window->getInput().getKeyState(Key::Right) == KeyState::Pressed) {
        lightDirection.x += lightSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Left) == KeyState::Pressed) {
        lightDirection.x -= lightSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Up) == KeyState::Pressed) {
        lightDirection.y += lightSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Down) == KeyState::Pressed) {
        lightDirection.y -= lightSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Period) == KeyState::Pressed) {
        lightDirection.z += lightSpeed;
    }
    if (m_window->getInput().getKeyState(Key::Comma) == KeyState::Pressed) {
        lightDirection.z -= lightSpeed;
    }
    cameraPos+= cameraDirection*dt ;
    light_position += lightDirection*dt;
    viewMatrix = glm::lookAt(cameraPos, cameraTarget, cameraUp);

}



OpenGLWindow * Scene::getWindow()
{
    return m_window;
}

void Scene::onKey(Key key, Action action, Modifier modifier)
{

}

void Scene::onMouseMove(MousePosition mouseposition)
{

}

void Scene::onMouseButton(MouseButton button, Action action, Modifier modifier)
{

}

void Scene::onMouseScroll(double xscroll, double yscroll)
{

}

void Scene::onFrameBufferResize(int width, int height)
{

}
void Scene::shutdown()
{

}
