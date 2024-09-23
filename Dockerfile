# ARM 아키텍처에 맞는 OpenJDK 이미지 사용
FROM openjdk:17-jdk-slim

# JAR 파일 경로를 위한 ARG 설정 (정확한 JAR 파일 이름으로 변경)
ARG JAR_FILE=build/libs/*.jar
# 실제 JAR 파일 이름으로 변경

# JAR 파일을 agagroup.jar로 복사
COPY ${JAR_FILE} agagroup.jar

# 운영 및 개발에서 사용되는 환경 설정
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "/agagroup.jar"]