#lang at-exp racket/base

(provide (all-defined-out))
(require "config.rkt")

;For further general information about TFP please see the TFP homepage.
;(http://www.tifp.org/).

;; A Date is a
;; Title-String x Date-String

(define display-calendar? #f)

(define calendar
  `(("Submission TBD"))
  #;`(("Submission" "March 32, -2019")
    ("Reviews" "March 32, -2019")
    ("Next Submission" "March 32, -2019")
    ("Reviews" "March 32, -2019")
    ("Symposium" "March 32, -2019")
    ("Post-Submission" "March 32, -2019")
    ("Post-Reviews" "March 32, -2019")
    ("Final" "March 32, -2019")))

(define (render-calendar-row title date)
  @list{<tr>
        <td>@|title|</td>
        <td>@|date|</td>
        </tr>})

(define (render-calendar)
  @section{Important Dates
@(if display-calendar?
     @list{<table class="table">
             @(for/list ([date calendar])
                @render-calendar-row[(car date) (cdr date)])
             </table>}
     "Calendar TBD; check back later.")})
