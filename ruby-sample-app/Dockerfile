# Use a base Ruby image
FROM ruby:3.0

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    postgresql-client \
 && rm -rf /var/lib/apt/lists/*

# Copy necessary files into the container
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

# Expose the port specified in app.rb
EXPOSE 8080

# Set the startup command
CMD ["ruby", "app.rb"]