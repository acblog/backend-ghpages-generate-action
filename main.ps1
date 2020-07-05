#!/bin/pwsh

dotnet tool install -g AcBlog.Tools.Sdk --add-source https://www.myget.org/F/stardustdl/api/v3/index.json
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