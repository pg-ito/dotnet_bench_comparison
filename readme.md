# setup
```
brew install asdf

asdf install dotnet 6.0.428
asdf install dotnet 7.0.410
asdf install dotnet 8.0.404
asdf install dotnet 9.0.101

cd dotnet6
asdf local dotnet 6.0.428
cd - 

cd dotnet7
asdf local dotnet 7.0.410
cd -

cd dotnet8
asdf local dotnet 8.0.403
cd -

cd dotnet9
asdf local dotnet 9.0.101
cd -
```

# hou to run
```
./build.sh &&  (./run_bench.sh 2>&1) > result_bench.txt
```

