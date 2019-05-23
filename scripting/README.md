# Build Image
If you want your .aws credentials to be included in the image, run:
```
./build.sh
```

Otherwise, you can run:
```
docker build -t rlarsene/scripting:v1 .
```

# Run Image
```
docker run -it -v /:/v rlarsene/scripting:v1 bash
```

