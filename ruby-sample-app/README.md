# Ruby sample application Dockerized

This is a Ruby sample application Dockerized for demonstration purpose. 
To dockerize, create a file named Dockerfile in your project directory. This Dockerfile uses the official Ruby image from Docker Hub, sets the working directory, installs dependencies with Bundler, and then copies the application code into the container. The CMD instruction specifies the command to run the Sinatra application.

## Prerequisites
- Before building the Docker image, it is necessary to Set Binding to 0.0.0.0 in the application code (app.rb). 
- This line explicitly sets the binding to '0.0.0.0', making the application accessible from external sources. This is useful when you want your Ruby application to be reachable from outside the local machine.

   ```bash
   set :bind, '0.0.0.0'
## Build and Run
1. Build the Docker image :

   ```bash
   docker build -t homebase-rubyapp .
2. Run the Docker container :
    
    ```bash
    docker run -p 8080:8080 homebase-rubyapp
3. Access the application in your browser at http://localhost:8080
