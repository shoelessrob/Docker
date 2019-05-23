# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#
# Originally written for Fedora-Dockerfiles by
#   "Aditya Patawari" <adimania@fedoraproject.org>

FROM centos:latest
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip34; yum clean all
RUN yum -y install awscli
RUN yum -y install postgresql
RUN yum -y install postgresql-devel
RUN yum -y install jq
RUN yum -y install gcc
RUN yum -y install python34
RUN yum -y install python34-setuptools
RUN yum -y install python34-devel
RUN yum -y install ansible
RUN yum -y install unzip
RUN yum -y install mongodb
RUN easy_install-3.4 pip
RUN pip3 install --upgrade pip
RUN pip3 install -U boto3
RUN pip3 install -U botocore
RUN pip3 install -U psycopg2
RUN pip3 install -U pywinrm
RUN pip3 install -U xmltodict
RUN pip3 install -U junit-xml
RUN pip3 install --ignore-installed -U ply
RUN pip3 install --ignore-installed -U pyhcl
RUN yum -y install MySQL-python
RUN pip3 install -U  pymssql
RUN pip3 install -U Jinja2
RUN pip3 install --upgrade s3transfer
RUN pip3 install -U awslogs

RUN curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /usr/bin/

RUN mkdir /root/.aws
COPY .aws/* /root/.aws/

RUN yum -y install redis

RUN yum -y install git

RUN mkdir ~/utils
RUN git clone https://github.com/awslabs/amazon-kinesis-scaling-utils.git ~/utils
RUN yum -y install java-1.8.0-openjdk
RUN yum -y install neovim
RUN curl -sLf https://spacevim.org/install.sh | bash
#RUN python -m pip install --user boto3
