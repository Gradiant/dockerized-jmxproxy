server:
    type: simple
    applicationContextPath: /
    connector:
        type: http
        bindHost: ${BIND_HOST}
        port: ${PORT}
