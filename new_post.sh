#!/bin/bash

# Create a new Jekyll post

POST_DIR="_posts"

read -p "Date (YYYY-MM-DD): " date
read -p "Filename tag (single word): " tag
read -p "Title: " title
read -p "Category (faculty, funding, papers, personal, conferences): " category
read -p "Description: " description

echo ""
echo "Enter post content. Finish with Ctrl-D:"
content=$(cat)

filename="${POST_DIR}/${date}-${tag}.md"

cat > "$filename" <<EOF
---
layout: post
title: $title
description: $description
date: $date
categories: $category
inline: true
---

$content
EOF

echo ""
echo "Created: $filename"