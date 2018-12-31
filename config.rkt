#lang at-exp racket/base

(provide (all-defined-out))

;; Must have trailing slashes
;; TODO: Add contract
(define uri-root (string-append "/" (or (getenv "URI_ROOT") "test/")))
(define build-dir "/tmp/tfp2019.output/")

(define tfpie-start-date "June 11, 2019")
(define submission-url "https://easychair.org/conferences/?conf=tfp2019")

(define tfp-dates "June 12—14, 2019")
(define tfp-venue "Vancouver, BC, CA")


@(define (hyperlink a text) @list{<a href=@|a|>@|text|</a>})

(define (page-header str)
  @list{
<header class="text-center my-4">
  <h3>@|str|</h3>
</header>})

(define (section-header str)
  @list{
<header class="text-left pb-2">
  <h4>@|str|</h4>
</header>})

;; Call like:
;; @section{Title
;; body ...}
;; the newline is important.
(define (section header . body)
  @list{
<div class="row pb-4">
  @section-header[header]
  <div class="container">
  @|body|
  </div>
</div>})
