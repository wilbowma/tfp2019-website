#lang at-exp racket/base

@(require "config.rkt")
@(provide (all-defined-out))

@(struct talk (title authors abstract resources))

@;Meant to be called with each argument on a new line
@(define (make-talk title _0 authors _1 abstract _2 link)
   (talk title authors abstract link))

@(define (speaker name)
   @list{<strong>@|name|</strong>})

@(define authors list)
@(define abstract list)
@(define slides list)
@(define pdf list)
@(define (resources slides _ pdf)
   (list (and slides @hyperlink[slides]{Slides}) (and pdf @hyperlink[pdf]{PDF})))

@(define example-talk
   @make-talk{A Very Cool Paper
              @authors{@speaker{William J. Bowman}, Ron Garcia}
              @abstract{Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.}
              @resources{@slides{#}
                         @pdf{#}}})
