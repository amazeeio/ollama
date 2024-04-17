curl http://localhost:11435/api/embeddings -d '{
  "model": "mxbai-embed-large",
  "prompt": "Llamas are members of the camelid family"
}'

curl https://nginx.main.ollama.test1.amazee.io/api/embeddings -d '{
  "model": "mxbai-embed-large",
  "prompt": "Llamas are members of the camelid family"
}'

curl http://localhost:11434/api/pull -d '{
  "name": "all-minilm"
}'