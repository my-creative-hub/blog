# Use an official Python image to build the static site
FROM python:3.10 AS builder

# Set the working directory
WORKDIR /docs

# Install git to enable the git-committers plugin
RUN apt-get update && apt-get install -y git

# Accept repository and token as build arguments
ARG GH_BLOG_TOKEN
ARG GITHUB_REPO=https://github.com/my-creative-hub/blog

# Clone the repository using the GitHub token for authentication
RUN git clone https://$GH_BLOG_TOKEN@github.com/my-creative-hub/blog.git /docs

# Install dependencies
RUN pip install --no-cache-dir -r /docs/requirements.txt

# Build the static site
RUN mkdocs build --clean

# Use Nginx as the final serving image
FROM nginx:latest

# Set environment variable (Cloud Run injects $PORT)
ENV PORT=8080

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/templates/default.conf

# Expose the Cloud Run default port (this is metadata)
EXPOSE 8080

# Replace ${PORT} with actual value and start Nginx
CMD ["sh", "-c", "envsubst '$$PORT' < /etc/nginx/templates/default.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
