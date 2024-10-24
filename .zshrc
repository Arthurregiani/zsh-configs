# Caminho para a instalação do Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Define o tema 'agnoster', que é minimalista e oferece informações sobre o git.
ZSH_THEME="agnoster"

# Corrige automaticamente erros de digitação em comandos comuns.
ENABLE_CORRECTION="true"

# Autocompletar insensível a maiúsculas/minúsculas e hífens.
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

# Aumenta o tamanho do histórico de comandos.
HISTSIZE=10000
SAVEHIST=10000

# Evita a duplicação de entradas no histórico.
setopt HIST_IGNORE_DUPS

# Não salva comandos com espaços à esquerda no histórico.
setopt HIST_IGNORE_SPACE

# Alias úteis para navegação e comandos rápidos.
alias ll='ls -lah'    # Lista arquivos em formato longo com tamanho legível.
alias gs='git status' # Comando rápido para verificar status do Git.
alias ga='git add .'  # Adiciona todas as mudanças no Git.
alias gp='git push'   # Faz push para o repositório remoto.
alias fuck='sudo $(fc -ln -1)'  # Reexecuta o último comando com sudo

# Ativa a exibição de tempo de execução de comandos longos (> 10s).
export REPORTTIME=10

# Plugins úteis para várias funcionalidades
plugins=(
  git                        # Funções Git úteis (status, branch, log)
  zsh-completions             # Autocompletar aprimorado
  command-not-found           # Sugere pacotes quando um comando não é encontrado
  zsh-autosuggestions         # Sugestões automáticas de comandos anteriores
  zsh-syntax-highlighting     # Realce de sintaxe para comandos no terminal
  web-search                  # Pesquisas rápidas na web direto do terminal
  copyfile                    # Copia arquivos para a área de transferência
  copypath                    # Copia o caminho do arquivo para a área de transferência
  colorize                    # Coloriza a saída de comandos (cat, less, etc.)
  colored-man-pages           # Coloriza as man pages para melhor leitura
  extract
  z
  history-substring-search
  sudo
)

# Carrega o Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Plugins com caminho manual (se necessário)
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

