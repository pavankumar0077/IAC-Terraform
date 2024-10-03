# Terraform graph

### Providers the graphical representation of terraform code.

- Example
- ![alt text](image.png)

### Install graphviz 
- ref link - ``` https://graphviz.org/download/ ```
- ``` sudo apt install graphviz ```

- Command
- ``` terraform graph | dot -Tsvg > graph.svg ```
- It will generate a graph.svg file
- Open the file in the browser
- ![alt text](image-1.png)

## NOTE : IF WE DON'T WANT TO INSTALL THEN USE ONLINE 

- Use command - ``` terraform graph ```
- Use or open link : ``` https://dreampuf.github.io/ ```

- ![alt text](image-2.png)
- ![alt text](image-3.png)