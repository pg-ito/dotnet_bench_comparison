#/bin/bash -eu

wc -c dotnet6/bin/Release/net6.0/osx-arm64/publish/prime_num 
wc -c dotnet7/bin/Release/net7.0/osx-arm64/publish/prime_num
wc -c dotnet8/bin/Release/net8.0/osx-arm64/native/prime_num
wc -c dotnet9/bin/Release/net9.0/osx-arm64/native/prime_num

MAX_NUM=${MAX_NUM:-1000000}

time dotnet6/bin/Release/net6.0/osx-arm64/publish/prime_num $MAX_NUM
time dotnet7/bin/Release/net7.0/osx-arm64/publish/prime_num $MAX_NUM
time dotnet8/bin/Release/net8.0/osx-arm64/native/prime_num $MAX_NUM
time dotnet9/bin/Release/net9.0/osx-arm64/native/prime_num $MAX_NUM
