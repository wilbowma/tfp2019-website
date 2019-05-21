#lang racket/base

(provide (all-defined-out))
(require "talks.rkt")

(define wed-slots
   `(("9:00--10:00" ,nikhil-keynote)
#;     ("10:00--10:30" ,coffeebreak)
#;     ("10:30--11:00" ,example-talk)
#;     ("11:00--11:30" ,example-talk)
#;     ("11:30--12:00" ,example-talk)
#;     ("12:00--14:00" ,lunch)
#;     ("14:00--14:30" ,example-talk)
#;     ("14:30--15:00" ,example-talk)
#;     ("15:00--15:30" ,coffeebreak)
#;     ("15:30--16:00" ,example-talk)
#;     ("16:00--16:30" ,example-talk)
     ))

(define thur-slots
  `(("9:00--10:00" ,frank-keynote)
#;   ("10:00--10:30" ,coffeebreak)
#;   ("10:30--11:00" ,example-talk)
#;   ("11:00--11:30" ,example-talk)
#;   ("11:30--12:00" ,example-talk)
#;   ("12:00--14:00" ,lunch)
#;   ("14:00--14:30" ,example-talk)
#;   ("14:30--15:00" ,example-talk)
#;   ("15:00--15:30" ,example-talk)
#;   ("15:30--16:00" ,example-talk)
    ))

(define fri-slots `())

; Program'd Days
(define days (list  "Wednesday" "Thursday" "Friday"))
(define slots (list wed-slots thur-slots fri-slots))
