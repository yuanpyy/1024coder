# 使用 JDK17（Render 最推荐）
FROM openjdk:17-jdk-slim

# 工作目录
WORKDIR /app

# 把你仓库中的 target/*.jar 拷贝到镜像中
COPY target/*.jar app.jar

# 暴露 Spring Boot 默认端口
EXPOSE 8080

# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]
