# Conversor de Moedas

Aplicativo mobile desenvolvido em Flutter para conversão de moedas de forma simples, rápida e intuitiva. Com o Conversor de Moedas, você pode transformar valores de Real (BRL) para Dólar (USD) e Euro (EUR) usando dados atualizados de câmbio em tempo real.

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

- `flutter`: Framework principal
- `provider`: Gerenciamento de estado
- `http`: Requisições HTTP
- `cupertino_icons`: Ícones iOS

## 🚀 Como Executar

1. Clone o repositório
2. Execute `flutter pub get` para instalar as dependências
3. Configure as variáveis de ambiente:
   - Copie o arquivo `.env.example` para `.env`
   - Adicione sua API key no arquivo `.env`:
     ```
     API_KEY=sua_api_key_aqui
     ```
4. Execute `flutter run` para iniciar o aplicativo

### 🔑 Configuração da API Key

Para obter uma API key gratuita para a API HG Brasil:

1. Acesse [HG Brasil](https://hgbrasil.com/)
2. Faça o cadastro gratuito
3. Obtenha sua API key
4. Adicione no arquivo `.env`

## 🧪 Testes

Execute `flutter test` para rodar os testes automatizados.

## 📱 Funcionalidades

- Conversão em tempo real entre BRL, USD e EUR
- Interface intuitiva e responsiva
- Dados atualizados via API
- Tratamento de erros robusto
- Design Material 3
