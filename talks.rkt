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

@(define nikhil-keynote
   @make-talk{Keynote: Structuring the Verification of Imperative Programs with Functional Programming
              @authors{@speaker{Nikhil Swamy}}
              @abstract{<p>Stooping to program low-level, imperative code is sometimes
              unavoidable, but specifying and verifying low level code can,
              thankfully, be significantly more abstract.</p>

              <p>F* (https://fstar-lang.org) is a programming language and proof
              assistant that enables the construction of verified C and
              assembly programs using dependent type theory.</p>

              <p>At the core of F*'s verification methodology is to specify
              programs using indexed types, where the indexes capture
              correctness properties of programs using classic functional
              programming patterns "one level up". For instance, effectful
              computations in F* are, broadly, described using monad-indexed
              monads; data manipulation code is typed using lens-indexed
              lenses; zero-copy, imperative parsers and built from a library of
              parser-indexed parser combinators; and so on.</p>

              <p>In this talk, I'll give a taste of F* programming through a
              series of examples, drawing on experience from Project
              Everest (@url{https://project-everest.github.io}) which uses F* to
              build and deploy high performance, verified, secure
              implementations of cryptographic communication protocols.</p>}
              @resources[#f #f #f]
              })

@(define frank-keynote
   @make-talk{Keynote: Probabilistic Programming
              @authors{@speaker{Frank Wood}}
              @abstract{TBD}
              @resources[#f #f #f]
              })
