#lang at-exp racket/base

(provide (all-defined-out))
(require "config.rkt")

;For further general information about TFP please see the TFP homepage.
;(http://www.tifp.org/).

;; A Date is a
;; Title-String x Date-String

(define display-calendar? #t)

(define calendar
  `(("Submission Deadline" "Thursday, March 28, 2019")
    ("Paper Notification" "Thursday, May 2, 2019")
    ("<a href=\"http://www.staff.science.uu.nl/~hage0101/tfpie2019/index.html\">TFPIE</a>" "Tuesday, June 11, 2019")
    ("Symposium" "Wednesday, June 12, 2019 – Friday, June 14, 2019")
    ("Student Paper Feedback" "Friday June 21, 2019")
    ("Submission for Formal Review" "Thursday, August 1, 2019")
    ("Notification of Acceptance" "Thursday, October 24, 2019")
    ("Camera Ready" "Saturday, November 30, 2019")))

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
