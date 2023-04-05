# Aplicativo Gedave - Instalação das ferramentas utilizadas
Esse Markdown é responsável por explicar a instalação de cada ferramenta utilizada no desenvolvimento do Portal de Serviços
> Esse ambiente foi criado sobre o sistema Operacional

**Indíce**
===========
- [Documentações Oficiais](#documentações-oficiais)
- [Estrutura de Pastas](#estrutura-de-pastas)
- Instalações
    - [flutter](https://flutter.dev/)
    - [Dart](https://dart.dev/)
- Configuração
    - [flutter](https://flutter.dev/)
    - [Dart](https://dart.dev/)

##	Documentações Oficiais
Abaixo segue as documentações oficiais das tecnologias usadas no projeto

- [flutter 2.5.2](https://flutter.dev/)
- [Dart 2.14.3](https://dart.dev/)

##	Estrutura de pastas

Seguimos uma estrutura de pastas padrão, para organização e seja fácil o compartilhamento de arquivos/ferramentas entre a equipe de desenvolvimento, a organização de pastas é essa:

    /C:/dev <---------------------------- Raiz de todo ambiente
	/C:/dev/flutter <---------------------------- flutter 2.5.2
	/C:/dev/workspaces  <------------------ Local de clone do GIT

## Instalações
- [flutter 2.5.2](https://flutter.dev/)
- [Dart 2.14.3](https://dart.dev/)

Verifique se já tem instalado em sua maquina o flutter 2.5.2:

    > flutter --version
    
    > Flutter 2.5.2 • channel stable • https://github.com/flutter/flutter.git
    Framework • revision 3595343e20 (2 months ago) • 2021-09-30 12:58:18 -0700
    Engine • revision 6ac856380f
    Tools • Dart 2.14.3

Verifique se já tem instalado em sua maquina o Dart 2.14.3:

	> dart --version

	> Dart SDK version: 2.14.3 (stable) (Wed Sep 29 13:10:26 2021 +0200) on "macos_x64"

Caso não tenha instalado e configurado ainda, siga o tutorial abaixo

    > Faça o Download do Android Studio: 
   [https://developer.android.com/studio#downloads.](https://developer.android.com/studio#downloads.)

    > Faça o Download do Flutter: 
[flutter 2.5.2](https://flutter.dev/)

Instalando o Flutter no macOS

A instalação no macOS normalmente é bem rápida para quem está habituado(a) com a linha de comandos. Necessitamos apenas do Git instalado e do próprio SDK do Flutter (que já tem o SDK do Dart embutido).

1 - O Flutter depende do Git para funcionar. Para isso, instale o Git através de seu gerenciador de pacotes (utilizaremos aqui o homebrew) por meio do comando brew install git.

    brew install git.

2 - Baixe a última versão do Flutter SDK para macOS. O SDK pode ser baixado em sua página oficial na seção “Get the Flutter SDK”.

[flutter](https://flutter.dev/)

3 - Extraia o Flutter para uma pasta que não exige privilégios de administrador. A documentação recomenda que o Flutter SDK seja extraído para uma pasta chamada “flutter” na raíz do seu usuário.

4 - Atualize o PATH da máquina para que este aponte para o Flutter SDK. Para isso, basta rodar o comando (export PATH=pwd/flutter/bin:$PATH) em uma instância do Terminal. Este export funcionará apenas enquanto o terminal estiver aberto. Uma maneira de configurar definitivamente no path do macOS está no artigo Update your path da documentação do Flutter.

    export PATH=pwd/flutter/bin:$PATH

5 - Rode o comando ´flutter´ no terminal. O help do Flutter CLI deve ser exibido. E por último, mas não menos importante, execute em uma linha de comandos do seu macOS o comando flutter doctor para que ele dê o diagnóstico completo se a instalação foi realizada corretamente. Caso ainda haja pendências ele dirá quais são e como resolvê-las.

    flutter doctor