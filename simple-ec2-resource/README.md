## Execução da Automação
1. **Na pasta raiz do projeto (*simple-ec2-resource*), compile a imagem docker com o comando:**
    ```bash
    docker build -t simple-ec2-resource:version1 .
    ```

2. **Para executar o container, utilize o comando:**
    ```bash
    docker run -dit --name ec2-resource simple-ec2-resource:version1 /bin/bash
    ```

3. **Para acessar o container, utilize o comando:**
    ```bash
    docker exec -it ec2-resource /bin/bash
    ```

4. **Configure o AWS CLI com o comando:**
    ```bash
    aws configure
    ```

5. **Navegue até o diretório do projeto:**
    ```bash
    cd /iac
    ```

6. **Execute o comando para inicializar o terraform:**
    ```bash
    terraform init
    ```

7. **Aplique a automação com o comando:**
    ```bash
    terraform apply
    ```

8. **Caso seja necessário, é possível destruir os recursos criados com o comando:**
    ```bash
    terraform destroy
    ```