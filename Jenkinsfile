// As instruções dentro de node() serão executadas
// apenas em um slave que tenha os rótulos corretos
// especificados no parâmetro.
node('slave_bash') {

  // Este bloco serve para obter o código.
  // O diretório antigo é apagado e todo o
  // código é clonado novamente do Git.
  stage 'Get'
  deleteDir()
  git url: 'http://gitlab.local/root/meu-app-incrivel.git'

  // Usando o comando sh é possível passar como parâmetro
  // um simples comando em formato de string ou mesmo
  // um comando maior com uma here-string.
  stage 'Do Something'
  sh '''
    find .
    ls -la
    uname -a
    date
  '''

  // Aqui a versão simples.
  stage 'Do Something More'
  sh 'tar -zcvf teste.tgz docker-compose.yml slave.jar start_jenkins_slave.sh'

  // O comando archive serve para arquivar artefatos.
  // Depois de gerar os pacotes, o archive se encarrega
  // de disponibilizar no Jenkins o arquivo para Download.
  stage 'Archive'
  archive 'release_0.1.tgz'

}
