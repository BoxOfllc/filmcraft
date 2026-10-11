@echo off
REM Double-click launcher for the FilmCraft desktop GUI (empty/Home, per
REM Settings > General > At Startup). For a specific project, use that
REM project's own "Open_*.bat" instead (e.g. in E:\SoD\Marketing\FilmCraft_Edits\).
cd /d "%~dp0"
if not exist "target\release\filmcraft.exe" (
    echo filmcraft.exe not found at target\release\filmcraft.exe
    echo Build it first: cargo build --release -p filmcraft
    pause
    exit /b 1
)
start "" "target\release\filmcraft.exe"
