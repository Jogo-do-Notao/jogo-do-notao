# Como contribuir com o projeto

## 🔧 Requisitos

- [Java Development Kit (JDK)](https://www.oracle.com/br/java/technologies/downloads/) - 24 ou superior
- [Git](https://git-scm.com/downloads)
- [IntelliJ IDEA](https://www.jetbrains.com/idea/download/)
- [Scene Builder](https://gluonhq.com/products/scene-builder/)

### Instalar o JDK

Baixe o JDK 24 (ou superior) pelo [site da Oracle](https://www.oracle.com/br/java/technologies/downloads/) ou execute o seguinte comando no seu terminal:

Windows:

```bash
winget install Oracle.JDK.24
```

### Instalar o IntelliJ IDEA Community

**Método 1:** Instale o IntelliJ diretamente pelo [site da JetBrains](https://www.jetbrains.com/idea/download/).

**Método 2:** Instale o [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) e depois use-o para instalar o IntelliJ Community.

---

## 🚀 Abrir o Projeto

1. Clone o repositório:

```bash
git clone https://github.com/Jogo-do-Notao/jogo-do-notao.git
```

2. Abra o repositório no IntelliJ
   - Vá em `File > Open` e selecione a pasta do projeto.
   - Certifique-se de configurar o SDK com o JDK 24: `File > Project Structure > Project > SDK`.

## 🧪 Executando o Projeto
No IntelliJ, abra as classes `App` ou `Main` e clique no botão `Run▶️` no canto superior ou use o atalho `Ctrl + F5`.

## 📦 Construir JAR executável
Selecione `Build > Build Artifacts... > jogo-do-notao:jar > Build`.

O arquivo JAR será criado na pasta `jogo-do-notao/out/artifacts/jogo_do_notao_jar/jogo-do-notao.jar`.