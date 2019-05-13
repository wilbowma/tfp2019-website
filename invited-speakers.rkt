#lang racket/base

(provide (all-defined-out))

(define display-speakers? #t)
(define invited-speakers
  ;; List of (Name x Image-Url x x Picture-Alt-Text x Blurb)
  `((
     "Nikhil Swamy"
     "https://www.microsoft.com/en-us/research/wp-content/uploads/2016/01/nikhil-swamy-1-180x180.jpg"
     "A picture of Nikhil"
     "Structuring the Verification of Imperative Programs with Functional Programming"
     )
    (
     "Frank Wood"
     "https://www.cs.ubc.ca/~fwood/assets/images/FrankDonaldWood.jpg"
     "A picture of Frank"
     "Probabilistic Programming"
     )
    ))
