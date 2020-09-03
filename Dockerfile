FROM nginx:latest
ARG static_code
ENV STATIC_CODE=$static_code
RUN echo "static code is: "${STATIC_CODE}
COPY ${STATIC_CODE} /usr/share/nginx/html
RUN ls /usr/share/nginx/html