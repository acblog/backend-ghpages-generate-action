#!/bin/pwsh

dotnet tool install -g AcBlog.Tools.StaticGenerator --version 0.0.1 --add-source https://www.myget.org/F/stardustdl/api/v3/index.json
if (!$?) {
    exit 1
}
acblog-sgen
# AcBlog.Tool.StaticGenerator $env:INPUT_DIST
if (!$?) {
    exit 1
}