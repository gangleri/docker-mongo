FROM ubuntu

EXPOSE 27017
RUN apt-get update && \
		apt-get install -y curl

RUN curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.0.tgz && \
		tar xzf mongodb-linux-x86_64-3.2.0.tgz && \
		rm -f mongodb-linux-x86_64-3.2.0.tgz && \
		mv mongodb-linux-x86_64-3.2.0 mongodb

ENTRYPOINT ["/mongodb/bin/mongod", "--bind_ip", "0.0.0.0"]


