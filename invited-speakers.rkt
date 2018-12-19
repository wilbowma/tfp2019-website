#lang racket/base

(provide (all-defined-out))

(define display-speakers? #f)
(define invited-speakers
  ;; List of (Name x Image-Url x x Picture-Alt-Text x Blurb)
  `((
     "TBD!"
     "http://placehold.it/500x325"
     "place holder picture"
     "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque."
     )
    (
     "TBD!"
     "http://placehold.it/500x325"
     "place holder picture"
     "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque."
     )
    ))
