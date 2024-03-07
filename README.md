## Visual Computing:
## OpenGL - 3D Object Animation: Keyboard-Controlled Transformations with Light Reflection

![wqw](https://github.com/Cyreexcs/OpenGL-3D-Animation/assets/70235827/04876526-9aa3-4e53-a9b4-c0128ce8b7ab)


The appearance of the object may differ from the initial image upon first running the application. To achieve the desired appearance, adjustments to the transformations, including translation, rotation, and scaling variables, may be necessary for each component. Similarly, color adjustments can be made within the fragment shader to match the desired outcome.

![pqwqwq](https://github.com/Cyreexcs/OpenGL-3D-Animation/assets/70235827/4627c2c7-b660-4e41-ad14-b0ccef204155)

The Same applies to the light calculations and reflections. These could be also changed by you to fit. 
I opted for a different image that isn't mine to enhance the visibility of the reflection, as the colors and lighting intensity seemed more conducive to highlighting the reflective properties. Feel free to adjust the colors and brightness to better suit your preferences.*


## Keyboard Controls

In this project, you can control the Camera and the light on the object using the keyboard. Here's how:

- **Move Camera**: Use the WASD keys to move the object around the scene.
- **Move Light**: Use the arrow keys (up, down, left, right) to move the light source on the object.

You can find the code responsible for handling these keyboard controls in the `Scene::update(float dt)` function within the `src/game/scene.cpp` file:

```cpp
// Inside src/game/scene.cpp

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






