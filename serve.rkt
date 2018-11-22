#lang racket/base

(require
 web-server/dispatchers/dispatch
 web-server/servlet-env
 "config.rkt")

(serve/servlet (lambda (_) (next-dispatcher))
               #:servlet-path (string-append uri-root "index.html")
               #:extra-files-paths (list build-dir)
               #:port 8000
               #:listen-ip #f
               #:launch-browser? #t)
