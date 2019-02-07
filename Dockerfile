FROM centos:7

RUN yum update -y

#install common tools
RUN yum install -y curl wget unzip which

#install openjdk 8
RUN yum install -y java-1.8.0-openjdk

#Install Libreoffice headless. Default location = /usr/lib64/libreoffice
RUN yum install -y libreoffice-headless libreoffice-writer libreoffice-calc libreoffice- libreoffice-impress libreoffice-langpack-zh-Hans libreoffice-langpack-zh-Hant libreoffice-langpack-ja ImageMagick

#Download Docmosis and install
#Docmosis Install location = /projects/tornado
#Docmosis template store = /projects/tornado/templates
#Docmosis working directory = /projects/tornado/working

RUN mkdir -p /projects/tornado && \
wget -q https://www.docmosis.com/download/tornado2.7/docmosisTornado2.7.1_7950.zip && \
unzip docmosisTornado2.7.1_7950.zip -d /projects/tornado && \
rm -f docmosisTornado2.7.1_7950.zip && \
mkdir -p /projects/tornado/templates && \
mkdir -p /projects/tornado/working

# Set environment variables.
ENV HOME /projects/tornado

# Define working directory.
WORKDIR /projects/tornado

# Define default command.
CMD ["java","-Dport=8090","-jar","/projects/tornado/docmosisTornado2.7.1.war"]
#CMD ["java","-version"]