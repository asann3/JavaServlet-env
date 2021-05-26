FROM tomcat:9.0.45-jdk11

RUN apt-get update && \
    apt-get -y install git vim

RUN mkdir -p /usr/local/tomcat/webapps/webapps/WEB-INF/classes/[username]

ADD /web.xml /usr/local/tomcat/conf
ADD /server.xml /usr/local/tomcat/webapps/webapps/WEB-INF/server.xml
ADD /context.xml /usr/local/tomcat/conf
ADD /classes/ /usr/local/tomcat/webapps/webapps/WEB-INF/classes/[username]/

RUN apt-get install -y locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 && \
    echo "ja_JP UTF-8" > /etc/locale.gen && \
    locale-gen && \
    locale-gen ja_JP.UTF-8
ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

# 画像の豆腐文字化け対策
RUN apt-get install -y fonts-ipafont

RUN echo alias setclass=\'cp -r /workspaces/classes/* /usr/local/tomcat/webapps/webapps/WEB-INF/classes/[username]\' >> ~/.bashrc
