#lang at-exp racket/base

(provide (all-defined-out))
(require "config.rkt")

;For further general information about TFP please see the TFP homepage.
;(http://www.tifp.org/).

;; A Date is a
;; Title-String x Date-String

(define display-calendar? #t)

(define calendar
  `(("Submission Deadline for pre-symposium formal review" "Thursday, March 28, 2019")
    ("Submission Deadline for Draft Papers" "<span style='text-decoration: line-through;'>Thursday, May 9, 2019</span><br />Extended: Thursday, May 16, 2019")
    ("Notification for pre-symposium submissions" "Thursday, May 2, 2019")
    ("Notification for Draft Papers" "<span style='text-decoration: line-through;'>Tuesday, May 14, 2019</span><br />Extended: Tuesday, May 21, 2019")
    ("<a href=\"http://www.staff.science.uu.nl/~hage0101/tfpie2019/index.html\">TFPIE</a>" "Tuesday, June 11, 2019")
    ("Symposium" "Wednesday, June 12, 2019 – Friday, June 14, 2019")
    ("Notification of Student Paper Feedback" "Friday June 21, 2019")
    ("Submission Deadline for revised Draft Papers (post-symposium formal review)" "Thursday, August 1, 2019")
    ("Notification for post-symposium submissions" "Thursday, October 24, 2019")
    ("Camera Ready Deadline (both pre- and post-symposium)" "Friday, November 29, 2019")))

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
