@echo off
echo.�����뵱ǰ�����İ汾�ţ��磺1.0.0
set /p push_version=
git add -A && git commit -m "Version %push_version%" && git push -u origin master
git tag -a %push_version% -m "By GitPush." && git push --tags