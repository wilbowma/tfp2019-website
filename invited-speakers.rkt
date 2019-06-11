#lang racket/base

(provide (all-defined-out))
(require "config.rkt")

(define display-speakers? #t)
(define invited-speakers
  ;; List of (Name x Image-Url x Picture-Alt-Text x Blurb x URL)
  `((
     "Nikhil Swamy, Microsoft Research"
     ,(format "~aresources/nik.jpg" uri-root)
     "A picture of Nikhil"
     "Structuring the Verification of Imperative Programs with Functional Programming"
     "https://www.microsoft.com/en-us/research/people/nswamy/"
     )
    (
     "John Hughes, Chalmers University of Technology"
     "http://www.cse.chalmers.se/~rjmh/Me%20prisma.jpg"
     "A picture of Jogn"
     "Experiences with QuickCheck: Testing the Hard Stuff and Staying Sanei"
     "http://www.cse.chalmers.se/~rjmh/"
     )
    (
     "Frank Wood, University of British Columbia"
     ,(format "~aresources/frank.jpg" uri-root)
     "A picture of Frank"
     "Probabilistic Programming"
     "https://www.cs.ubc.ca/~fwood/"
     )
    ("Christian Weilbach"
     "https://whilo.github.io/assets/img/badge.png"
     "A picture of Christian"
     "Anglican Tutorial: Turing-complete, functional Probabilistic Programming as a Domain Specific Language"
     "https://whilo.github.io/about/"
    )))
