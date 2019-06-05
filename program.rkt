#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")


(define wed-slots
  `(("9:00" "Welcome and refreshment")
    ("9:15--9:30" "Opening remarks")
    ("9:30--10:30" ,nikhil-keynote)
    ("10:30--11:00" ,break)
    ("11:00--11:30" ,talk1)
    ("11:30--12:00" ,talk5)
    ("12:00--14:00" ,lunch)
    ("14:00--14:30" ,talk8)
    ("14:30--15:00" ,talk3)
    ("15:00--15:30" ,break)
    #;("15:30--16:00" ,talk5)))

(define thur-slots
  `(("9:00" "Welcome and refreshment")
    ("9:30--10:00" ,talk4)
    ("10:00--10:30" ,talk6)
    ("10:30--11:00" ,break)
    ("11:00--12:00" ,john-invited-talk)
    ("12:00--14:00" ,lunch)))

(define fri-slots
  `(("9:00" "Welcome and refreshment")
    ("9:30--10:30" ,frank-keynote)
    ("10:30--11:00" ,break)
    ("11:00--11:30" ,talk7)
    ("11:30--12:00" ,talk9)
    ("12:00--14:00" ,lunch)
    ("14:00--15:00" ,anglican-tutorial)
    ("15:00--15:30" ,break)
    ("15:30--15:45" "Closing Remarks")
    ))

; Program'd Days
(define days (list  "Wednesday, June 12" "Thursday, June 13" "Friday, June 14"))
(define slots (list wed-slots thur-slots fri-slots))
