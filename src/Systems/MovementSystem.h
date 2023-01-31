#ifndef MOVEMENTSYSTEM_H
#define MOVEMENTSYSTEM_H

class MovementSystem : public System
{
public:
    MovementSystem()
    {
        // TODO RequireComponent<T>();
    }

    void Update()
    {

        for (auto entity : GetEntities())
        {
            // TODO Update entity position based on velocity
        }
    }
}

#endif