#!/bin/pwsh

#  --add-source https://sparkshine.pkgs.visualstudio.com/StardustDL/_packaging/feed/nuget/v3/index.json

dotnet tool install -g AcBlog.Tools.Sdk --version 0.0.1.2
if (!$?) {
    exit 1
}
acblog remote add origin $env:INPUT_DIST
if (!$?) {
    exit 1
}
acblog push
if (!$?) {
    exit 1
}