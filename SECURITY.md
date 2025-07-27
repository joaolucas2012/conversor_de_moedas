# 🔒 Segurança - Variáveis de Ambiente

## ⚠️ Importante

Este projeto utiliza variáveis de ambiente para proteger informações sensíveis como API keys. **NUNCA** commite o arquivo `.env` no repositório.

## 📁 Arquivos de Configuração

### `.env` (NÃO COMMITAR)

```
API_KEY=sua_api_key_real_aqui
```

### `.env.example` (PODE COMMITAR)

```
API_KEY=your_api_key_here
```

## 🛡️ Medidas de Segurança Implementadas

1. **`.gitignore`**: O arquivo `.env` está listado no `.gitignore`
2. **Validação**: O código verifica se a API key está presente
3. **Documentação**: Instruções claras para configuração
4. **Exemplo**: Arquivo `.env.example` como template

## 🔧 Como Configurar

1. **Clone o repositório**
2. **Copie o arquivo de exemplo**:
   ```bash
   cp .env.example .env
   ```
3. **Edite o arquivo `.env`** e adicione sua API key real
4. **Nunca commite o arquivo `.env`**

## 🚨 Verificações de Segurança

- ✅ `.env` está no `.gitignore`
- ✅ `.env.example` está no repositório
- ✅ Validação de API key no código
- ✅ Documentação de segurança

## 🔍 Verificação de Status

Para verificar se o `.env` está sendo ignorado:

```bash
git status
```

O arquivo `.env` não deve aparecer na lista de arquivos modificados.

## 📝 Boas Práticas

1. **Nunca** compartilhe sua API key
2. **Sempre** use variáveis de ambiente para dados sensíveis
3. **Mantenha** o `.env.example` atualizado
4. **Documente** as variáveis necessárias
5. **Valide** se as variáveis estão presentes no código
