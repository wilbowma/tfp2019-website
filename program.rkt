#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")


(define wed-slots
  ; Time x Maybe-Chair x (Talk or HTML-String)
  `(("9:00" #f "Welcome and refreshment")
    ("9:15&ndash;9:30" #f ,opening-remarks)
    ("9:30&ndash;10:30" "William J. Bowman" ,nikhil-keynote)
    ("10:30&ndash;11:00" #f ,break)
    ("11:00&ndash;11:30" "Matteo Cimini" ,talk1)
    ("11:30&ndash;12:00" #f ,talk5)
    ("12:00&ndash;14:00" #f ,lunch)
    ("14:00&ndash;14:30" "John Hughes" ,talk8)
    ("14:30&ndash;15:00" #f ,talk3)
    ("15:00&ndash;15:30" #f ,break)
    #;("15:30&ndash;16:00" ,talk5)))

(define thur-slots
  `(("9:00" #f "Welcome and refreshment")
    ("9:30&ndash;10:30" "Ron Garcia" ,john-invited-talk)
    ("10:30&ndash;11:00" #f ,break)
    ("11:00&ndash;11:30" "Marco Morazan" ,talk4)
    ("11:30&ndash;12:00" #f ,talk6)
    ("12:00&ndash;14:00" #f ,lunch)
    ("14:00&ndash;15:00" #f "Nitobe Gardens. <br />We'll walk from TFP at 2:00.")
    ("15:00&ndash;16:00" #f "Museum of Anthropology<br />We'll walk from Nitobe at about 15:00.")
    ("17:30" #f "Enigma Cafe on 10th Ave.<br />A group will take the 99 or 14 from UBC at 17:00. It's a 55 minute walk from MOA for those who want to walk.")
    ))

(define fri-slots
  `(("9:00" #f "Welcome and refreshment")
    ("9:30&ndash;10:30" "Ron Garcia" ,frank-keynote)
    ("10:30&ndash;11:00" #f ,break)
    ("11:00&ndash;11:30" "William J. Bowman" ,talk7)
    ("11:30&ndash;12:00" #f "Cancelled due to unforeseeable events")
    ("12:00&ndash;14:00" #f ,lunch)
    ("14:00&ndash;15:00" "William J. Bowman" ,anglican-tutorial)
    ("15:00&ndash;15:30" #f ,break)
    ("15:30&ndash;15:45" #f "Closing Remarks")
    ))

; Program'd Days
(define days (list  "Wednesday, June 12" "Thursday, June 13" "Friday, June 14"))
(define slots (list wed-slots thur-slots fri-slots))
