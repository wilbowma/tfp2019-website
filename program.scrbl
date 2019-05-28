#lang reader "page-lang.rkt"

@;You probably want to modify talks.rkt or programs.rkt

@#:title TFP 2019 Program
@#:author William J. Bowman
@#:description The homepage for Trends in Functional Programming (TFP) 2019
@#:keywords tfp,trends in functional programming,functional programming,conference,vancouver

@(require "talks.rkt" "program.rkt")

@; auxiliary definitions

@(define (maybe-cdr x) (if (null? x) x (cdr x)))
@(define (talk-cell id talk)
   (define title (talk-title talk))
   (define authors (talk-authors talk))
   (define abstract (talk-abstract talk))
   @list{
<td align="left" class="program-title-cell">
@list{
      <div class="program-title">
      <a href="#@|id|">@|title|</a> <a class="hide-abstract" href="#">(Hide Abstract)</a>
      </div>
      <div class="bd-callout bd-callout-info program-abstract"><p class="lead">@|abstract|</p></div>
      <div class="program-authors">@|authors|</div>
      <div class="program-resources">
      @;type set each resource separated by |, removing trailing |
      @(maybe-cdr (reverse
                   (for/fold
                       ([ls '()])
                       ([r (talk-resources talk)])
                     (if r
                         @(cons r (cons " | " ls))
                         ls))))
      </div>
      }
})

@(define (info-cell info)
   @list{
<td align="left" class="program-info-cell">
  <div class="program-info">@|info|</div>
</td>})

@(define counter 0)
@(define (program-slot time talk-or-info . rest)
   (define id (format "talk~a" counter))
   (set! counter (add1 counter))
   @list{
<tr id="@|id|">
  <td align="left" class="program-time-cell">@|time|</td>
  @(if (talk? talk-or-info)
       (talk-cell id talk-or-info)
       (info-cell talk-or-info))
</tr>})

@; page content

@page-header{TFP 2019 Program}

@(define accepted 0)
@section{Accepted Talks
<table class="table table-hover table-striped">
  @(for/list ([talk talks])
    (set! accepted (add1 accepted))
    (define id (format "accepted~a" counter))
    @list{<tr id="@|id|"><td class="program-time-call">@(talk-cell id talk)</td></tr>})
</table>
}

@section{Program
<table class="table table-hover table-striped">
@(for/list ([day days]
            [slots slots])
   @list{<th>@|day|</th>
         <th><hr /></th>
         @(for/list ([slot slots])
            (apply program-slot slot))
         })
</table>
}
