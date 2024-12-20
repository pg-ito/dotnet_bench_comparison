#/bin/bash -eu

TARGET_LIST=('dotnet6' 'dotnet7' 'dotnet8' 'dotnet9')
TARGET_CODE=${TARGET_CODE:-'../Program.cs'}
echo 'build all targets'
for target in ${TARGET_LIST[@]}; do
    cd $target
    cp -af ${TARGET_CODE} ./Program.cs 
    dotnet clean
    dotnet build --no-incremental -c Release -r osx-arm64 --self-contained
    dotnet publish --no-build -c Release -r osx-arm64
    cd -
done

wc -c dotnet6/bin/Release/net6.0/osx-arm64/publish/prime_num 
wc -c dotnet7/bin/Release/net7.0/osx-arm64/publish/prime_num
wc -c dotnet8/bin/Release/net8.0/osx-arm64/native/prime_num
wc -c dotnet9/bin/Release/net9.0/osx-arm64/native/prime_num
