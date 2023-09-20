FROM nginx:latest

# * Set timezone
ENV TZ=Asia/Bangkok

# * Update and install nano
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nano 

RUN  apt-get install net-tools && apt-get install lsof -y

# * Expose port 80
EXPOSE 80
