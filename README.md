# Craylib Template

This is a template project for quickly starting [raylib](https://www.raylib.com/) game development using C/C++ on **Windows**. It provides a basic structure and setup to help you get started with your game or graphical application.

## Features

- Simple template structure for raylib projects
- Out-of-the-box compilation for Windows (Visual Studio, MinGW, etc.)
- Example main file to verify setup
- Ready for expansion and customization

## Getting Started

### Prerequisites

- Windows OS (Tested on Windows 10/11)
- [raylib](https://github.com/raysan5/raylib) library installed
- C/C++ compiler (such as MinGW, MSVC, or Clang)
- Git (optional, for cloning the template)

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/ms-solly/craylib-template.git
   cd craylib-template
   ```
2. **Install raylib:**
   - Download and follow [Windows install instructions](https://github.com/raysan5/raylib/wiki/Working-on-Windows) for raylib.
   - Ensure raylib's include and lib files are available to your compiler.

3. **Configure your build system:**
   - If using Visual Studio, open or create a solution and add the files from this template.
   - If using MinGW and makefiles, update the paths in your makefile as needed.
   - Make sure to link against `raylib.lib`/`raylib.dll` appropriately.

### Building & Running

**Example with MinGW:**
```sh
gcc -o game src/main.c -I<path_to_raylib_include> -L<path_to_raylib_lib> -lraylib -lopengl32 -lgdi32 -lwinmm
./game
```
Replace `<path_to_raylib_include>` and `<path_to_raylib_lib>` with your actual raylib paths.

**Visual Studio:**  
Just build and run the solution/project as usual.

## Project Structure

```
craylib-template/
├── src/
│   └── main.c       # Example raylib entry point
├── README.md
├── ...              # Other files (Makefile, .gitignore, etc.)
```

## Example Usage

```c
#include "raylib.h"

int main(void) {
    InitWindow(800, 450, "Craylib Template Example");

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Hello, raylib!", 350, 220, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}
```

## Troubleshooting

- Ensure raylib's DLL is on your `PATH` or in the executable directory.
- If you get compiler errors about missing headers or undefined references, check your include/lib settings.
- For MinGW, make sure to use the same bitness (32/64) as your raylib build.

## Links

- [raylib Official Website](https://www.raylib.com/)
- [raylib GitHub](https://github.com/raysan5/raylib)
- [raylib Windows Setup Guide](https://github.com/raysan5/raylib/wiki/Working-on-Windows)

---

Feel free to use this template as a starting point for your raylib projects on Windows!
