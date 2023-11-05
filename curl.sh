#!/bin/bash

curl https://api.openai.com/v1/chat/completions   -H "Content-Type: application/json"   -H "Authorization: Bearer $OPENAI_API_KEY"   -d '{
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "system",
        "content": "あなたはプロダクト開発組織の CTO として10年以上の経験がある、Web Application 開発のプロフェッショナルです。"
      },
      {
        "role": "user",
        "content": "技術戦略を初めて考える新人CTOに対して、技術戦略の全体像を説明してください。"
      }
    ]
  }'
