#lang racket/base

(provide (all-defined-out))
(require "config.rkt")

(define display-speakers? #t)
(define invited-speakers
  ;; List of (Name x Image-Url x Picture-Alt-Text x Blurb x URL)
  `((
     "Nikhil Swamy, Microsoft Research"
     "https://www.microsoft.com/en-us/research/wp-content/uploads/2016/01/nikhil-swamy-1-180x180.jpg"
     "A picture of Nikhil"
     "Structuring the Verification of Imperative Programs with Functional Programming"
     "https://www.microsoft.com/en-us/research/people/nswamy/"
     )
    (
     "Frank Wood, University of British Columbia"
     ,(format "~a/resources/frank.jpg" uri-root)
     "A picture of Frank"
     "Probabilistic Programming"
     "https://www.cs.ubc.ca/~fwood/"
     )
    ))
