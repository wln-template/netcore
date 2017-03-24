@echo off
set /p input=请输入当前发布的版本号（如:v160101）：
if "%input%"=="" (
    echo Auto Push
    git add -A && git commit -a -m "GitPush" && git push -u origin master
) else (
    git add -A && git commit -a -m "Version %input%" && git push -u origin master
    git tag -a %input% -m "By GitPush." && git push --tags -u origin master
)