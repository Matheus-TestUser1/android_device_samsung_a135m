

# TWRP Device Tree para Samsung Galaxy A13 (SM-A135M)


## Aviso Legal
**⚠️ Atenção: Instalar recoveries personalizadas pode potencialmente inutilizar seu dispositivo. Prossiga por sua própria conta e risco. Não me responsabilizo por qualquer dano ou perda de dados.**

**Compilado para Android 13 e 14.**

## Requisitos
- Computador Linux (Recomendado Ubuntu 20.04 ou superior)
- Mínimo 250GB de espaço em disco
- 16GB de RAM (recomendado)
- Ferramentas: `repo`, `git`, `build-essential`

## Preparação do Ambiente

### 1. Configurar Ambiente de Compilação
```bash
# Atualizar pacotes
sudo apt update && sudo apt upgrade -y

# Instalar dependências
sudo apt install -y repo git build-essential wget python3 bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
```

### 2. Configurar Repositório TWRP
```bash
# Criar diretório de trabalho
mkdir -p ~/TWRP && cd ~/TWRP

# Inicializar repositório TWRP
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

# Sincronizar repositórios
repo sync -j$(nproc)
```

### 3. Clonar Árvore do Dispositivo
```bash
# Clonar árvore do dispositivo
git clone -b twrp-12.1 https://github.com/Matheus-TestUser1/android_device_samsung_a13.git device/samsung/a13
```

### 4. Compilar TWRP
```bash
# Preparar ambiente de compilação
cd ~/TWRP
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a13-eng
mka recoveryimage
```

## Status de Funcionalidades

### Funcionalidades Principais
- [A] Tamanho correto de tela/recovery
- [P] Touch e tela funcionando
- [A] Reboot para sistema
- [P] ADB
- [P] Backup/restauração para cartão interno/SD

### Funcionalidades Secundárias
- [ ] Sideload de update.zip
- [P] Suporte F2FS/EXT4
- [ ] Descriptografia de dados
- [P] Exportação MTP

### Legenda
- `[A]` Totalmente Funcional
- `[P]` Parcialmente Funcional
- `[ ]` Não Testado/Não Funcional

## Créditos
- [Device Tree a137f](https://github.com/badra639/twrp_samsung_a13ve)
- [Device Tree A01 Core](https://github.com/almondnguyen/twrp_device_samsung_a01core)
- [Device Tree A146B](https://github.com/physwizz/a146b-a14x-TWRP-11-dt)

## Recursos Adicionais
- [Guia Completo de Compilação TWRP](https://xdaforums.com/t/guide-to-twrp-building.4515895/)

## Suporte
Em caso de problemas, abra uma issue no repositório ou busque ajuda nos fóruns de desenvolvimento Android.

