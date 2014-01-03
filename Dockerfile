FROM realyze/google-chrome-30.0.1599.101

MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
 
RUN apt-get update -y -q
RUN apt-get install -y -q unzip xvfb
 
# Install Chromedriver 2.8
ADD http://chromedriver.storage.googleapis.com/2.8/chromedriver_linux64.zip /srv/
RUN unzip /srv/chromedriver_linux64.zip -d /usr/local/bin

# Install Xvfb init script
ADD xvfb_init /etc/init.d/xvfb
RUN chmod a+x /etc/init.d/xvfb
