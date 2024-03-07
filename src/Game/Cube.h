#ifndef OPENGL_PRAKTIKUM_CUBE_H
#define OPENGL_PRAKTIKUM_CUBE_H


// Format: x, y, z (Position), n_x, n_y, n_z (Normals), R, G, B (Color)

static const float cubeVert[] =   {0.5, -0.5, -0.5, 0.5, -0.5, -0.5,1, 1, 0,
                                   0.5, -0.5, 0.5, 0.5, -0.5, 0.5,1, 1, 0,
                                   -0.5, -0.5, 0.5,-0.5, -0.5, 0.5, 1, 1, 1,
                                   -0.5, -0.5, -0.5,-0.5, -0.5, -0.5, 1, 1, 0,
                                   0.5, 0.5, -0.5,0.5, 0.5, -0.5, 0, 1, 0,
                                   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 0,
                                   -0.5, 0.5, 0.5, -0.5, 0.5, 0.5, 0, 1, 1,
                                   -0.5, 0.5, -0.5,-0.5, 0.5, -0.5, 0.0, 1, 0.5};

static const int cubeInd[] = {1, 2, 3,
                              7, 6, 5,
                              4, 5, 1,
                              5, 6, 2,
                              2, 6, 7,
                              0, 3, 7,
                              0, 1, 3,
                              4, 7, 5,
                              0, 4, 1,
                              1, 5, 2,
                              3, 2, 7,
                              4, 0, 7};



#endif //OPENGL_PRAKTIKUM_CUBE_H

/*

T1->rotate(glm::vec3(0, 0.0003, 0));
glBindVertexArray(vaoID);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * head.getTransformMatrix(), false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * body.getTransformMatrix() , false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * rightUpperArm.getTransformMatrix(), false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * LeftUpperArm.getTransformMatrix() , false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

static float angle = 0;
static float time =0;
time +=dt;
angle = sin(time)*0.00015;
leftLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(angle, 0, 0));
rightLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(-angle, 0, 0));

LeftLowerArm.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(angle, 0.0, 0));
rightLowerArm.rotateAroundPoint(glm::vec3(0, 0.5, 0), glm::vec3(-angle, 0.0, 0));
/*if (time){
    leftLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(angle, 0, 0));
    rightLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(0, 0, 0));

} else {
    leftLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(0, 0, 0));
    rightLeg.rotateAroundPoint(glm::vec3(0, -2.6, 0), glm::vec3(angle, 0, 0));
}
m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * leftLeg.getTransformMatrix(), false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * rightLeg.getTransformMatrix() , false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * rightLowerArm.getTransformMatrix(), false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

m_shader->setUniform("modelMatrix", T1->getTransformMatrix()*GlobalScaling.getTransformMatrix() * LeftLowerArm.getTransformMatrix(), false);
glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

glBindVertexArray(0);
*/
/*
 *
 *
 * void Scene::render(float dt)
{
    // Clear background color and depth buffer for depth test
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glBindVertexArray(vaoID);

    // 2.2
    //T1->rotate(glm::vec3(0.2 * dt, 0.2 * dt, 0.2 * dt));
    //m_shader->setUniform("mm", T1->getTransformMatrix(), false);

    static float time = 2;
    static bool rightMove = true;
    time += dt;
    if (time > 4) {
        time = 0;
        rightMove = !rightMove;
    }

    // Rotiere Robot um 0.2 rad pro Sekunde

    alle->rotate(glm::vec3(0, 0.6 * dt, 0));

    m_shader->setUniform("mm", alle->getTransformMatrix() * alle1->getTransformMatrix() * kopf->getTransformMatrix(), false);
    glm::vec3 colorAdjustment = glm::vec3(0.3f, -0.7f, 0.2f);
    m_shader->setUniform("colorAdjustment", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);


    m_shader->setUniform("mm", alle->getTransformMatrix() * alle1->getTransformMatrix() * rumpf->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(-0.2f, -0.4f, -0.2f);
    m_shader->setUniform("colorAdjustment", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

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

    if (rightMove) {
        linkArm->rotateAroundPoint(glm::vec3(0, 0.3, 0), glm::vec3(-0.2 * dt, 0, 0));
    }
    else {
        linkArm->rotateAroundPoint(glm::vec3(0, 0.3, 0), glm::vec3(0.2 * dt, 0, 0));
    }

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * linkArm->getTransformMatrix() * linkOberarm->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(0.7f, 0.7f, -0.4f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * linkArm->getTransformMatrix() * linkUnterarm->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(-0.4f, -0.4f, 0.7f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

    if (rightMove) {
        rechtArm->rotateAroundPoint(glm::vec3(0, 0.3, 0), glm::vec3(0.2 * dt, 0, 0));
    } else {
        rechtArm->rotateAroundPoint(glm::vec3(0, 0.3, 0), glm::vec3(-0.2 * dt, 0, 0));
    }

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * rechtArm->getTransformMatrix() * rechtUnterarm->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(0.7f, 0.7f, -0.4f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * rechtArm->getTransformMatrix() * rechtOberarm->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(-0.4f, -0.4f, 0.7f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

    if (rightMove) {
        linkBein->rotateAroundPoint(glm::vec3(0, -0.3, 0), glm::vec3(-0.1 * dt, 0, 0));
    } else {
        linkBein->rotateAroundPoint(glm::vec3(0, -0.3, 0), glm::vec3(0.1 * dt, 0, 0));
    }

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * linkBein->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(0.7f, 0.7f, -0.4f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);

    if (rightMove) {
        rechtBein->rotateAroundPoint(glm::vec3(0, -0.3, 0), glm::vec3(0.1 * dt, 0, 0));
    } else {
        rechtBein->rotateAroundPoint(glm::vec3(0, -0.3, 0), glm::vec3(-0.1 * dt, 0, 0));
    }

    m_shader->setUniform("modelMatrix", alle->getTransformMatrix() * alle1->getTransformMatrix() * rechtBein->getTransformMatrix(), false);
    colorAdjustment = glm::vec3(-0.4f, -0.4f, 0.7f);
    m_shader->setUniform("colorvs", glm::vec3 (colorsini,colorcosi,0.2) );
    glDrawElements(GL_TRIANGLES, sizeof(cubeInd), GL_UNSIGNED_INT, 0);


    glBindVertexArray(0);
}

 */