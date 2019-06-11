#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")


(define wed-slots
  ; Time x Maybe-Chair x (Talk or String)
  `(("9:00" #f "Welcome and refreshment")
    ("9:15--9:30" "Ron Garcia" "Opening remarks")
    ("9:30--10:30" "William J. Bowman" ,nikhil-keynote)
    ("10:30--11:00" #f ,break)
    ("11:00--11:30" #f ,talk1)
    ("11:30--12:00" #f ,talk5)
    ("12:00--14:00" #f ,lunch)
    ("14:00--14:30" #f ,talk8)
    ("14:30--15:00" #f ,talk3)
    ("15:00--15:30" #f ,break)
    #;("15:30--16:00" ,talk5)))

(define thur-slots
  `(("9:00" #f "Welcome and refreshment")
    ("9:30--10:00" "Ron Garcia" ,john-invited-talk)
    ("10:30--11:00" #f ,break)
    ("11:00--11:30" "Marco Morazan" ,talk4)
    ("11:30--12:00" #f ,talk6)
    ("12:00--14:00" #f ,lunch)
    ("After lunch (TBD)" #f "Nitobe Gardens")
    ("After that (TBD)" #f "Museum of Anthropology")
    ("After that (TBD)" #f "Enigma Cafe on 10th Ave")
    ))

(define fri-slots
  `(("9:00" #f "Welcome and refreshment")
    ("9:30--10:30" "Ron Garcia" ,frank-keynote)
    ("10:30--11:00" #f ,break)
    ("11:00--11:30" "William J. Bowman" ,talk7)
    ("11:30--12:00" #f "Cancelled due to unforeseeable events")
    ("12:00--14:00" #f ,lunch)
    ("14:00--15:00" "William J. Bowman" ,anglican-tutorial)
    ("15:00--15:30" #f ,break)
    ("15:30--15:45" #f "Closing Remarks")
    ))

; Program'd Days
(define days (list  "Wednesday, June 12" "Thursday, June 13" "Friday, June 14"))
(define slots (list wed-slots thur-slots fri-slots))
