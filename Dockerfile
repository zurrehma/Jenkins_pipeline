FROM nginx:latest
ARG static_code
ENV STATIC_CODE=$static_code
COPY ${STATIC_CODE} /usr/share/nginx/html