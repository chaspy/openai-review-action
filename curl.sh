#!/bin/bash

# escape
body=$(printf %q "$ISSUE_BODY")

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d "{
      \"model\": \"gpt-3.5-turbo\",
      \"messages\": [
        {
          \"role\": \"system\",
          \"content\": \"あなたはプロダクト開発組織の CTO として10年以上の経験がある、Web Application 開発のプロフェッショナルです。\"
        },
        {
          \"role\": \"user\",
          \"content\": \"以降で記載する設計方針について、CTO の立場でレビューしてください。設計: ${body}\"
        }
      ]
    }"
