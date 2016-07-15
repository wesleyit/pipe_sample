// As instruções dentro de node() serão executadas
// apenas em um slave que tenha os rótulos corretos
// especificados no parâmetro.
node('label_do_slave') {

  // Este bloco serve para obter o código.
  // O diretório antigo é apagado e todo o
  // código é clonado novamente do Git.
  stage 'Get'
  deleteDir()
  git url: 'https://here_comes_the_repo.git'

  // Usando o comando sh é possível passar como parâmetro
  // um simples comando em formato de string ou mesmo
  // um comando maior com uma here-string.
  stage 'Deps'
  sh '''
    virtualenv virtualenv
    source virtualenv/bin/activate
    pip install -r requirements.txt
  '''

  // O comando archive serve para arquivar artefatos.
  // Depois de gerar os pacotes, o archive se encarrega
  // de disponibilizar no Jenkins o arquivo para Download.
  stage 'Archive'
  archive 'release_0.1.tgz'

}
