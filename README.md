# xconv

# Save changes

git add . && git status
git commit -m "" && git push origin main

# build

docker build --progress plain -t xconv:1.0.1 .

# run

docker run -it --rm -p 6000:6000 xconv:1.0.1
