FROM adoptopenjdk/openjdk11

EXPOSE 80

ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-Dserver.port=80", "-jar", "app.jar"]