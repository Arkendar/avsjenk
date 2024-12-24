FROM jenkins/jenkins:lts

# Переключаемся в root для установки дополнительных пакетов
USER root

# Устанавливаем Docker внутри контейнера Jenkins
RUN apt-get update && apt-get install -y \
    docker.io \
    && rm -rf /var/lib/apt/lists/*

# Возвращаемся к пользователю Jenkins
USER jenkins
