#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")

(define wed-slots
  `(("9:00--10:00" ,nikhil-keynote)
    ("10:00--10:30" ,break)
    ("10:30--11:00" ,talk1)
    ("11:00--11:30" ,talk2)
    ("11:30--13:30" ,lunch)
    ("13:30--14:00" ,talk3)
    ("14:30--15:00" ,talk4)
    ("15:00--15:30" ,break)
    ("15:30--16:00" ,talk5)
    #;("16:00--16:30" ,talk6)))

(define thur-slots
  `(("9:00--9:30" ,talk6)
    ("9:30--10:00" ,talk7)
    ("10:30--11:00" ,break)
    ("11:00--12:00" ,john-invited-talk)
    ("12:00--14:00" ,lunch)))

(define fri-slots
  `(("9:00--10:00" ,frank-keynote)
    ("10:00--10:30" ,break)
    ("10:30--11:00" ,talk8)
    ("11:00--11:30" ,talk9)
    ("11:30--13:30" ,lunch)
    ("14:00--14:30" ,tbd-talk)
    ("14:30--15:00" ,tbd-talk)
    ("15:00--15:30" ,break)
    ("15:30--16:00" ,tbd-talk)
    ))

; Program'd Days
(define days (list  "Wednesday" "Thursday" "Friday"))
(define slots (list wed-slots thur-slots fri-slots))
