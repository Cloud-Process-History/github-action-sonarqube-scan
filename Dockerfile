FROM sonarsource/sonar-scanner-cli

LABEL "com.github.actions.name"="SonarQube Scan - Cepsa"
LABEL "com.github.actions.description"="SonarQube Scanner"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/cepsadigital/github-action-devops-sonar-scan"
LABEL homepage="https://github.com/cepsadigital"
LABEL maintainer="Cepsa"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
