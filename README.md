# BhagwadGita AI Chat Bot 
This is a chat bot which resolves your complex queries with the learnings from relgious text 'Bhagwad Gita' built using Llama2 and Sentence Transformers. 


### Chat with your documents 🚀
- [Huggingface model](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/blob/main/llama-2-7b-chat.ggmlv3.q8_0.bin) as Large Language model
- [LangChain](https://python.langchain.com/docs/get_started/introduction.html) as a Framework for LLM
- [Chainlit](https://docs.chainlit.io/overview) for deploying.
- [GGML](https://github.com/ggerganov/ggml) to run in commodity hardware (cpu)
- [CTransformers](https://github.com/marella/ctransformers) to load the model.

## System Requirements

You must have Python 3.10 or later installed. Earlier versions of python may not compile.  

---

## To Run the Project Locally 



1. Setup the .env file and input the HuggingfaceHub API token as follows. Get HuggingfaceHub API key from this [URL](https://huggingface.co/settings/tokens). You need to create an account in Huggingface webiste if you haven't already.
   ```
   HUGGINGFACEHUB_API_TOKEN=your_huggingface_api_token
   ```
   
2. Create a virtualenv and activate it
   ```
   python3 -m venv .venv && source .venv/bin/activate
   ```

3. Run the following command in the terminal to install necessary python packages:
   ```
   pip install -r requirements.txt
   ```

4. Run the following command in your terminal to create the embeddings and store it locally:
   ```
   time python3 ingest.py
   ```

5. Run the following command in your terminal to run the app UI:
   ```
   chainlit run main.py -w
   ```


## Bhagavad Gita Chatbot Docker Containerization



### Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Docker](https://docs.docker.com/get-docker/): Installed and configured on your local machine.

### Build the Docker Image

Follow these steps to build the Docker image for the Bhagavad Gita Chatbot:

1. Clone the project repository to your local machine:

   ```bash
   git clone <repository_url>
   cd <project_directory>
   ```

   Replace `<repository_url>` with the URL of your project's Git repository and `<project_directory>` with the project's directory name.

2. Open a terminal and navigate to the project directory.

3. Build the Docker image using the provided Dockerfile. Run the following command:

   ```bash
   docker build -t chat-bot:1.0 .
   ```

   This command builds the Docker image with the tag `chat-bot:1.0`. The `.` at the end of the command indicates the build context is the current directory.

4. Wait for Docker to complete the build process. It will download necessary dependencies and set up the environment.

### Running the Docker Container

Once the Docker image is built, you can run a container based on that image:

```bash
docker run -d --name chat-bot-container -p 8000:8000 chat-bot:1.0
```

- `-d`: Runs the container in detached mode (in the background).
- `--name chat-bot-container`: Assigns a name to the running container (you can choose any name).
- `-p 8000:8000`: Maps port 8000 inside the container to port 8000 on your local machine.
- `chat-bot:1.0`: Specifies the Docker image to use.

The Bhagavad Gita Chatbot should now be running inside the Docker container.

### Accessing the Chatbot

To access the chatbot, open your web browser and navigate to:

```
http://localhost:8000
```

You should see the chatbot's user interface and be able to interact with it.

### Stopping and Removing the Container

To stop and remove the running Docker container when you're done, use the following commands:

```bash
docker stop chat-bot-container
docker rm chat-bot-container
```



## Deploying Bhagavad Gita Chatbot on Minikube Kubernetes

This guide explains how to deploy the Bhagavad Gita Chatbot project on Minikube, a lightweight Kubernetes implementation, to obtain a hosted endpoint.

### Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/): Installed and configured on your local machine.
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/): Installed and configured to manage your Kubernetes cluster.

### Deploying to Minikube

Follow these steps to deploy your Bhagavad Gita Chatbot on Minikube Kubernetes:

1. **Start Minikube**:

   Ensure that Minikube is running. If not, start it using the following command:

   ```bash
   minikube start
   ```

2. **Set Up Docker Environment**:

   Configure your Docker client to use the Docker daemon inside the Minikube VM by running the following command:

   ```bash
   eval $(minikube -p minikube docker-env)
   ```

3. **Build the Docker Image**:

   Navigate to your project directory and build the Docker image, as explained in the previous README.md:

   ```bash
   docker build -t chat-bot:1.0 .
   ```

4. **Deploy Your Chatbot**:

   Deploy your chatbot application using Kubernetes manifests. You can use the provided `chat-bot-deployment.yaml` and `chat-bot-service.yaml` files as examples. Apply them using the following commands:

   ```bash
   kubectl apply -f chat-bot-deployment.yaml
   kubectl apply -f chat-bot-service.yaml
   ```

   This deploys your application as a Kubernetes Deployment and exposes it as a Service.

5. **Access the Hosted Chatbot**:

   Thank you for the clarification. To access the hosted endpoint of your Bhagavad Gita Chatbot on Minikube, you can indeed use the `minikube service` command with the `--url` option. Here's how:

1. After you've deployed your chatbot using the provided Kubernetes manifests, run the following command to obtain the URL:

   ```bash
   minikube service chat-bot-service --url
   ```

   This command will display the full URL you can use to access your deployed chatbot.

2. Copy the URL provided by the `minikube service` command.

3. Open your web browser (e.g., Google Chrome, Firefox).

4. Paste the copied URL into the address bar of your web browser and press Enter.

You should now be able to access your Bhagavad Gita Chatbot through the hosted endpoint using the Minikube IP and port specified in the URL.



