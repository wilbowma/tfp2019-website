#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")

(define wed-slots
  `(("9:30--10:30" ,nikhil-keynote)
    ("10:30--11:00" ,break)
    ("11:00--11:30" ,tbd-talk)
    ("11:30--12:00" ,tbd-talk)
    ("12:00--14:00" ,lunch)
    ("14:00--14:30" ,tbd-talk)
    ("14:30--15:00" ,tbd-talk)
    ("15:00--15:30" ,break)
    ("15:30--16:00" ,tbd-talk)
    ("16:00--16:30" ,tbd-talk)))

(define thur-slots
  `(("9:30--10:00" ,tbd-talk)
    ("10:00--10:30" ,tbd-talk)
    ("10:30--11:00" ,break)
    ("11:00--11:30" ,tbd-talk)
    ("11:30--12:00" ,tbd-talk)
    ("12:00--14:00" ,lunch)))

(define fri-slots
  `(("9:30--10:30" ,frank-keynote)
    ("10:30--11:00" ,break)
    ("11:00--11:30" ,tbd-talk)
    ("11:30--12:00" ,tbd-talk)
    ("12:00--14:00" ,lunch)
    ("14:00--14:30" ,tbd-talk)
    ("14:30--15:00" ,tbd-talk)
    ("15:00--15:30" ,break)
    ("15:30--16:00" ,tbd-talk)
    ("16:00--16:30" ,tbd-talk)))

; Program'd Days
(define days (list  "Wednesday" "Thursday" "Friday"))
(define slots (list wed-slots thur-slots fri-slots))
