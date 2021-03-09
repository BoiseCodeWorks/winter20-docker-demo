dotnet publish -c Release
docker build -t docker-demo ./bin/Release/net5.0/publish
docker tag docker-demo registry.heroku.com/winter20-docker-demo/web
docker push registry.heroku.com/winter20-docker-demo/web
heroku container:release web -a winter20-docker-demo
echo press any key
read end