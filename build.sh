#!/bin/bash
# Build and run the craylib-template project on Windows (MinGW + bash)
# Edit the RAYLIB_INCLUDE and RAYLIB_LIB paths to match your raylib install!

RAYLIB_INCLUDE="C:/raylib/include"
RAYLIB_LIB="C:/raylib/lib"
SRC_DIR="src"
OUT_EXE="game.exe"

echo "Compiling..."
gcc -o $OUT_EXE $SRC_DIR/main.c -I"$RAYLIB_INCLUDE" -L"$RAYLIB_LIB" -lraylib -lopengl32 -lgdi32 -lwinmm

if [ $? -eq 0 ]; then
    echo "Build successful. Running..."
    ./$OUT_EXE
else
    echo "Build failed."
    exit 1
fi

