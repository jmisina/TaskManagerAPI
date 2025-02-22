
FROM eclipse-temurin:21-jdk-alpine

ENV JAVA_HOME=/opt/jdk/jdk-21
ENV PATH="${JAVA_HOME}/bin:${PATH}"

ARG APPLICATION_USER=app

RUN addgroup --system $APPLICATION_USER && adduser --system $APPLICATION_USER --ingroup $APPLICATION_USER
RUN mkdir /app && chown -R $APPLICATION_USER /app

COPY --chown=$APPLICATION_USER:$APPLICATION_USER target/UserMsvc-0.0.1.jar /app/app.jar

WORKDIR /app

USER $APPLICATION_USER

EXPOSE 8011

ENTRYPOINT ["java", "-jar", "/app/app.jar"]