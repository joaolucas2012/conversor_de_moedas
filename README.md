# 💱 Conversor de Moedas

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)

**Aplicativo mobile desenvolvido em Flutter para conversão de moedas de forma simples, rápida e intuitiva.**

Com o Conversor de Moedas, você pode transformar valores de **Real (BRL)** para **Dólar (USD)** e **Euro (EUR)** usando dados atualizados de câmbio em tempo real.

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen?style=flat-square)](https://github.com/seu-usuario/conversor_de_moedas)
[![Tests](https://img.shields.io/badge/tests-passing-brightgreen?style=flat-square)](https://github.com/seu-usuario/conversor_de_moedas)
[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](LICENSE)

</div>

---

## 📋 Sumário

<div align="center">

|    [🏗️ Arquitetura](#️-arquitetura)     |    [🚀 Como Executar](#-como-executar)    |          [🧪 Testes](#-testes)          |
| :-------------------------------------: | :---------------------------------------: | :-------------------------------------: |
| [📱 Funcionalidades](#-funcionalidades) | [🌐 Permissões](#-permissões-de-internet) | [🔑 API Key](#-configuração-da-api-key) |

</div>

### 🎯 Navegação Rápida

- [📁 Estrutura de Pastas](#-estrutura-de-pastas)
- [🔧 Padrões Implementados](#-padrões-implementados)
- [📦 Dependências](#-dependências)
- [🛠️ Build com JSON](#️-build-com-variáveis-de-ambiente-em-json)

---

## 🏗️ Arquitetura

O projeto foi refatorado seguindo boas práticas de programação e princípios SOLID:

### 📁 Estrutura de Pastas

```
lib/
├── controllers/          # Controladores de estado
├── models/              # Modelos de dados
├── pages/               # Páginas da aplicação
├── services/            # Serviços e APIs
├── shared/              # Recursos compartilhados
│   └── constants/       # Constantes da aplicação
├── widgets/             # Widgets reutilizáveis
└── main.dart           # Ponto de entrada da aplicação
```

### 🔧 Padrões Implementados

- **SOLID Principles**: Separação de responsabilidades
- **MVC Pattern**: Model-View-Controller
- **Dependency Injection**: Injeção de dependências via Provider
- **Repository Pattern**: Abstração de acesso a dados
- **Widget Composition**: Componentes reutilizáveis

### 📦 Dependências

<div align="center">

| 📦 **Pacote**                                                                                            | 🎯 **Versão** | 📋 **Descrição**               |
| :------------------------------------------------------------------------------------------------------- | :------------ | :----------------------------- |
| ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white)   | `sdk`         | Framework principal do projeto |
| ![Provider](https://img.shields.io/badge/Provider-4285F4?style=flat-square&logo=google&logoColor=white)  | `^6.1.2`      | Gerenciamento de estado        |
| ![HTTP](https://img.shields.io/badge/HTTP-FF6B6B?style=flat-square&logo=node.js&logoColor=white)         | `^1.4.0`      | Requisições HTTP               |
| ![DotEnv](https://img.shields.io/badge/DotEnv-4A90E2?style=flat-square&logo=dotenv&logoColor=white)      | `^5.1.0`      | Variáveis de ambiente          |
| ![Cupertino](https://img.shields.io/badge/Cupertino-000000?style=flat-square&logo=apple&logoColor=white) | `^1.0.8`      | Ícones iOS                     |

</div>

## 🚀 Como Executar

<div align="center">

### ⚡ Setup Rápido

</div>

| 🔢 **Passo** | 💻 **Comando**         | 📋 **Descrição**                   |
| :----------- | :--------------------- | :--------------------------------- |
| **1**        | `git clone [url]`      | Clone o repositório                |
| **2**        | `flutter pub get`      | Instale as dependências            |
| **3**        | `cp .env.example .env` | Configure as variáveis de ambiente |
| **4**        | `flutter run`          | Execute o aplicativo               |

### 🔧 Configuração Detalhada

<details>
<summary><b>📋 Passo a Passo Completo</b></summary>

1. **Clone o repositório**

   ```bash
   git clone https://github.com/seu-usuario/conversor_de_moedas.git
   cd conversor_de_moedas
   ```

2. **Instale as dependências**

   ```bash
   flutter pub get
   ```

3. **Configure as variáveis de ambiente**

   ```bash
   cp .env.example .env
   # Edite o arquivo .env e adicione sua API key
   ```

4. **Execute o aplicativo**
   ```bash
   flutter run
   ```

</details>

### 🔑 Configuração da API Key

Para obter uma API key gratuita para a API HG Brasil:

1. Acesse [HG Brasil](https://hgbrasil.com/)
2. Faça o cadastro gratuito
3. Obtenha sua API key
4. Adicione no arquivo `.env`

## 🧪 Testes

Execute `flutter test` para rodar os testes automatizados.

## 📱 Funcionalidades

<div align="center">

### ✨ Principais Recursos

</div>

| 🚀 **Recursos**                | 📋 **Descrição**                                  |
| :----------------------------- | :------------------------------------------------ |
| 💱 **Conversão em Tempo Real** | Conversão instantânea entre BRL, USD e EUR        |
| 🌐 **Dados Atualizados**       | Informações de câmbio via API em tempo real       |
| 📱 **Interface Responsiva**    | Design adaptável para diferentes tamanhos de tela |
| 🎨 **Material Design 3**       | Interface moderna e intuitiva                     |
| 🔄 **Verificação de Rede**     | Detecção automática de conectividade              |
| ⚡ **Tratamento de Erros**     | Feedback claro para problemas de conexão          |
| 🔒 **Segurança**               | API key protegida com variáveis de ambiente       |

<div align="center">

### 🎯 Experiência do Usuário

</div>

- **Conversão Instantânea**: Digite um valor e veja a conversão em tempo real
- **Interface Limpa**: Design minimalista e fácil de usar
- **Feedback Visual**: Indicadores de carregamento e erro
- **Offline Detection**: Avisos quando não há conexão com a internet

## 🌐 Permissões de Internet

<div align="center">

### 🔐 Configurações de Segurança por Plataforma

</div>

| 📱 **Plataforma**                                                                                      | 🔑 **Permissões**         | 📋 **Configuração**                     |
| :----------------------------------------------------------------------------------------------------- | :------------------------ | :-------------------------------------- |
| ![Android](https://img.shields.io/badge/Android-3DDC84?style=flat-square&logo=android&logoColor=white) | `INTERNET`                | Acesso à internet                       |
| ![Android](https://img.shields.io/badge/Android-3DDC84?style=flat-square&logo=android&logoColor=white) | `ACCESS_NETWORK_STATE`    | Verificação de estado da rede           |
| ![iOS](https://img.shields.io/badge/iOS-000000?style=flat-square&logo=ios&logoColor=white)             | `NSAppTransportSecurity`  | Configuração de segurança de transporte |
| ![Web](https://img.shields.io/badge/Web-4285F4?style=flat-square&logo=google-chrome&logoColor=white)   | `Content-Security-Policy` | Política de segurança de conteúdo       |

### 🎯 Para que são usadas:

- 🌐 **Acessar a API de câmbio** em tempo real
- 📡 **Verificar conectividade** de rede
- 🔄 **Atualizar dados** de conversão
- ⚡ **Detectar problemas** de conexão

### 🛠️ Build com variáveis de ambiente em JSON

Você pode gerar o APK utilizando variáveis de ambiente definidas em um arquivo JSON. Exemplo de arquivo `env.json` na raiz do projeto:

```json
{
  "API_KEY": "sua_api_key_aqui"
}
```

Para gerar o APK usando esse arquivo, execute:

```bash
flutter build apk --dart-define-from-file=env.json
```

> **Dica:** O arquivo pode estar em qualquer local, basta ajustar o caminho no comando acima.

---

## 🤝 Contribuindo

<div align="center">

### 💡 Como Contribuir

</div>

1. **Fork** o projeto
2. **Crie** uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. **Commit** suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. **Push** para a branch (`git push origin feature/AmazingFeature`)
5. **Abra** um Pull Request

### 📋 Diretrizes de Contribuição

- ✅ Siga os padrões de código existentes
- ✅ Adicione testes para novas funcionalidades
- ✅ Mantenha a documentação atualizada
- ✅ Use commits descritivos em inglês

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

<div align="center">

### 🌟 Se este projeto te ajudou, considere dar uma ⭐

**Desenvolvido com ❤️ usando Flutter**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)

</div>
