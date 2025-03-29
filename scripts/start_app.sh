#!/bin/bash
docker stop blog || true
docker rm blog || true
docker run -d --name blog -p 80:5000 \
  -e MONGO_URL="mongodb+srv://20ntucs1120:WU6TAoQiyFljPJxO@blog-cluster.bvblv8k.mongodb.net/blog" \
  mammarraza/blog:latest

