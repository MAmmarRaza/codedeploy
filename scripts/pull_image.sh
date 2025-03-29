#!/bin/bash
echo "${{ secrets.DOCKER_PASSWORD }}" | docker login -u "${{secrets.$DOCKER_USERNAME}}" --password-stdin
docker pull mammarraza/blog:latest
