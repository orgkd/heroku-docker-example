
# Test docker container on heroku

Let's say we have our application files in data directory. In this case it's a
single txt file, but it's enough for testing.

For the beginnign go to the same directory where the docker file is.

Make sure heroku containers plugin is installed:

    heroku plugins:install heroku-container-registry

Log in to the Heroku container registry:

    heroku container:login

Following command will create an new application and print it's name

    heroku create

Build the image and push to the heroku container registry:

    heroku container:push web --app <app-name>

`web` here is a type of container deployed. See [here](https://devcenter.heroku.com/articles/procfile)
to find out more about process types.

Open application in browser:

    heroku open --app <app-name>

Check heroku logs:

    heroku logs --app <app-name>


Links:

  - [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)
  - [ An Alpine-based Docker example](https://github.com/heroku/alpinehelloworld)
  - [Container Registry and Runtime | Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime#build-an-image-and-push)
