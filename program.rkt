#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")

(define monday-slots
   `(("9:00--9:20" ,example-talk)
     ("9:20--9:50" ,example-talk)
     ("9:50--10:10" ,example-talk)
     ("10:10--10:30" ,example-talk)
     ("10:30--11:00" "Break")))

(define tuesday-slots monday-slots)
(define wednesday-slots monday-slots)
(define thursday-slots monday-slots)

; Program'd Days
(define days (list "Monday, June Watever" "Tuesday" "Wednesday" "Thursday"))
(define slots (list monday-slots tuesday-slots wednesday-slots thursday-slots))
