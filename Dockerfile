# escape=`
FROM microsoft/windowsservercore

COPY jre1.8.0_131  c:\Java\jre1.8.0_131

ENV JAVA_HOME c:\Java\jre1.8.0_131
RUN setx /m PATH %PATH%;%JAVA_HOME%\bin

CMD [ "java.exe","-version"]