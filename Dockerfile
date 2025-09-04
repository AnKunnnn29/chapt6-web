# Sử dụng image Tomcat 11 chính thức
FROM tomcat:11-jdk17

# Xóa các app mặc định của Tomcat (ROOT, docs, examples…)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build từ Maven vào thư mục webapps/ROOT.war
COPY target/SurveyWebApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]