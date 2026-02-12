docker pull tinguyen2024/stockagent:v1.1
docker run -d --name stockagent-v1.1 \
    -p 5005:5005 \
    -v $(pwd)/models:/data/models:ro \
    -v $(pwd)/data_runs:/app/data_runs \
    -e ANALYSIS_MODEL=llama-3.1-8b-instruct-Q8R16.gguf \
    -e DECISION_MODEL=Llama-3.2-3B-Instruct-Q4_K_4.gguf \
    -e THREADS=32 \
    tinguyen2024/stockagent:v1.1

