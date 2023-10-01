Name : Tanuj Kumar
Entry No : 2020CSB1134

# Project Documentation: Bhagavad Gita Chatbot

## Introduction

The Bhagavad Gita Chatbot is an AI-powered application designed to answer user queries and provide guidance on life problems using examples from The Bhagavad Gita. It utilizes Meta's Llama 2 model for natural language processing.

## Project Structure

The project is divided into two main components:

### 1. `ingest.py`

The `ingest.py` script is responsible for loading The Bhagavad Gita PDF and breaking it down into sentence embeddings. Running this script creates a vector store model, which is used by the chatbot for reference.

### 2. `main.py`

The core functionality of the chatbot resides in the `main.py` script. It loads the Llama 2 model and processes user queries. Additionally, it provides a basic user interface using Streamlit.

## References

- [Meta's Llama 2 Model](https://ai.meta.com/blog/large-language-model-llama-meta-ai/)
- [Llama GitHub Repository](https://github.com/facebookresearch/llama)
- [Llama Recipes](https://github.com/facebookresearch/llama-recipes)
- [Llama 2 Announcement on Hugging Face](https://huggingface.co/blog/llama2)
- [Download The Bhagavad Gita PDF](https://www.rupanugabhajanashram.com/wp-content/uploads/2022/03/Bhagavad-gita-Swami-BG-Narasingha.pdf)

## How to Run Locally

Detailed instructions on how to run the project locally can be found in the project's [README.md](./README.md) file. Please refer to that document for step-by-step guidance on setting up and running the application on your local machine.


## Containerization

To containerize the project, a Dockerfile has been provided. You can build the Docker image and run the application within a container. Please follow the instructions in the [README.md](./README.md) for containerization.

## Hosting on Kubernetes (Minikube)

This project is designed to be hosted on a Kubernetes cluster using Minikube, which is a lightweight Kubernetes implementation for local development. Manifest files for deploying the application on Minikube are included. To obtain a hosted endpoint for the chatbot, please refer to the instructions in the [README.md](./README.md).

---

