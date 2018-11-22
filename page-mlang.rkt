#lang at-exp racket/base

;; defines #lang s-exp "page-lang.rkt"
;; extends scribble/text
;; checks for "title", "brand", "description", "keywords"
;; create "uri-path" based on filename
;; loads module begin in a definition before loading page-template (modifiable with parameter)

(require
 scribble/text
 scribble/text/syntax-utils
 (for-syntax
  racket/base
  racket/string
  racket/syntax
  syntax/srcloc
  syntax/parse))
(require "config.rkt")

(provide
 (all-from-out scribble/text)
 (all-from-out "config.rkt")
 (rename-out
  [begin/text begin]
  [include/text include])
 (except-out
  (all-from-out racket/base)
  begin
  #%module-begin)
 (rename-out [module-begin #%module-begin]))

;(define current-page-template "page-template.scrbl")

(define-syntax (module-begin syn)
  (syntax-parse syn
    #:literals (require)
    [(_ (~datum "\n") ...
        (~seq #:title title:str) (~datum "\n") ...
        (~optional (~seq #:author author:str) #:defaults ([author #'""])) (~datum "\n") ...
        (~optional (~seq #:description desc:str) #:defaults ([desc #'""])) (~datum "\n") ...
        (~optional (~seq #:keywords keywords:str) #:defaults ([keywords #'""]) ) (~datum "\n") ...
        (~datum "\n") ...
        ;; TODO: Allow require anywhere in rest
        (require e ...) ...
        rest ...)
     (let-values ([(base name dir?) (split-path (source-location-source syn))])
       (let ([uri-path (string-append "/" (string-replace (path->string name) ".scrbl" ".html"))])
         (quasisyntax/loc syn
           (module-begin/text
            (require e ...) ...
            #,@(for/list ([id (list "title" "author" "description" "keywords" "uri-path")]
                          [val (list #'title #'author #'desc #'keywords uri-path)])
                 #`(define #,(syntax-local-introduce (format-id #f id))
                     (string-trim #,val)))
            (define page-contents
              (begin/text
                rest ...))
            (include/text "page-template.scrbl")))))]))
