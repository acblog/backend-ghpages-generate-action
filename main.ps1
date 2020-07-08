#!/bin/pwsh

dotnet tool install -g AcBlog.Tools.Sdk --add-source https://sparkshine.pkgs.visualstudio.com/StardustDL/_packaging/feed/nuget/v3/index.json
if (!$?) {
    exit 1
}
acblog init
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