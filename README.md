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

## Steps to Replicate 



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
