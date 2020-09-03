FROM nginx:latest
ARG static_code
ENV STATIC_CODE=$static_code
RUN rm -rf /usr/share/nginx/html/* && ls /usr/share/nginx/html
COPY ${STATIC_CODE} /usr/share/nginx/html
RUN ls /usr/share/nginx/html