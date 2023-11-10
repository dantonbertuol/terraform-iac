Nesse projeto temos o arquivo terraform.tfvars onde ficam as variáveis que serão utilizadas no arquivo ec2-variable-file.tf. O arquivo terraform.tfvars é um arquivo de texto simples que contém variáveis e valores que serão utilizados pelo Terraform para executar a automação. O arquivo terraform.tfvars é opcional, mas é uma boa prática utilizá-lo para manter as variáveis separadas do código.
## Execução da Automação
1. **Na pasta raiz do projeto (*ec2-variables*), compile a imagem docker com o comando:**
    ```bash
    docker build -t ec2-variable-file:version1 .
    ```

2. **Para executar o container, utilize o comando:**
    ```bash
    docker run -dit --name ec2-variable-file ec2-variable-file:version1 /bin/bash
    ```

3. **Para acessar o container, utilize o comando:**
    ```bash
    docker exec -it ec2-variable-file /bin/bash
    ```

4. **Configure o AWS CLI com o comando:**
    ```bash
    aws configure
    ```

5. **Navegue até o diretório do projeto:**
    ```bash
    cd /ec2-variable-file
    ```

6. **Execute o comando para inicializar o terraform:**
    ```bash
    terraform init
    ```
7. **Verifique o plano de execução e exporte para um arquivo**
    ```bash
    terraform plan -out plan.out
    ```

8. **Aplique a automação com o comando:**
    ```bash
    terraform apply
    ```

9. **Caso seja necessário, é possível destruir os recursos criados com o comando:**
    ```bash
    terraform destroy
    ```