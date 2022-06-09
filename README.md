# carsRegister

Um projeto feito com Dart/Flutter visando uma empresa de aluguel de carros.

## Funcionalidades

### Cadastro
Nesse app é possível realizar o cadastro de carros com seu respectivo valor FIPE. Para isso é utilizada uma [API](https://deividfortuna.github.io/fipe/) que retorna todas as marcas, modelos e valores FIPE disponíveis.
Também é possível especificar o valor do aluguel desse carro e se a gasolina é cobrada ou não.

Os carros cadastrados são salvos em uma database usando o package `SQFlite`. Os cadastros também podem ser editados ou excluídos.

### Dark mode
Ao iniciar, o aplicativo identifica se o sistema está em dark mode ou não, e automaticamente ajusta o modo de luz do aplicativo, que pode posteriormente ser mudado conforme preferência.

## Packages

### [`google_fonts`](https://pub.dev/packages/google_fonts)
Para personalização de textos com as fontes da Google.

### [`lottie`](https://pub.dev/packages/lottie)
Lottie é um site com animações livres para uso, e possuí um package no Flutter. Foi usado na animação da Splashscreen.

### [`auto_size_text`](https://pub.dev/packages/auto_size_text)
Package usado para criar textos que se adaptam ao espaço disponível.

### [`font_awesome_flutter`](https://pub.dev/packages/font_awesome_flutter)
Package usado para implementar ícones personalizados.

### [`mobx`](https://pub.dev/packages/mobx)
Foi usado para controlar o estado do aplicativo e dispensar o uso do setState.

### [`sqflite`](https://pub.dev/packages/sqflite)
Usado para a persistência dos carros cadastrados.

### [`path_provider`](https://pub.dev/packages/path_provider)
Usado como um auxílio do SQFlite.

### [`http`](https://pub.dev/packages/http)
Package usado para se obter os dados da API de valores FIPE.

### [`intl`](https://pub.dev/packages/intl)
Foi usado para criar filtros de texto personalidos. Como o de valor do aluguel, onde os número digitados se organizarão automaticamente no padrão brasileiro de moeda.

### [`permission_handler`](https://pub.dev/packages/permission_handler)
Usado para solicitação da permissão de armazenamento do Android, para que se pudesse criar a database.

### [`url_launcher`](https://pub.dev/packages/url_launcher)
Usado para abrir links no navegador do dispositivo, o aplicativo possuí links clicáveis na página "Sobre".


