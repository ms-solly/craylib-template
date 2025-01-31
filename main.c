#include "raylib.h"
#include <stdio.h>
#include <string.h>
#include <time.h>

#define SCREEN_WIDTH 1200
#define SCREEN_HEIGHT 600


int main() {
    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "C raylib template");
    SetTargetFPS(60);

    while (!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(BLACK);

        DrawText("C Template", GetScreenWidth()/2 - MeasureText("C Template",100), GetScreenHeight()/2, 100, WHITE);


        EndDrawing();
    }
    

    CloseWindow();
    return 0;
}
