# ---- Stage 1: Build WAR with Maven ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom + src để Maven có thể build
COPY pom.xml .
COPY src ./src

# Build, bỏ test cho nhanh
RUN mvn -B -DskipTests package

# ---- Stage 2: Runtime on Tomcat 11 ----
FROM tomcat:11-jdk17
# Xóa webapps mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR đã build thành ROOT.war (dù tên thật là gì)
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
