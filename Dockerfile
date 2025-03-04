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

# Copy the generated static site from the builder stage
COPY --from=builder /docs/site /usr/share/nginx/html

# Expose the necessary port
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
