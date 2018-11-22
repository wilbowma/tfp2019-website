#lang reader "page-lang.rkt"

@; NOTE: Must go in order:
@; title, author, description, keywords

@#:title TFP 2019
@#:author William J. Bowman
@#:description The homepage for Trends in Functional Programming (TFP) 2019
@#:keywords tfp,trends in functional programming,functional programming,conference,vancouver

@(require "invited-speakers.rkt" "calendar.rkt")

@(define (make-speaker-card name pic alt body)
   @list{
         <div class="col-lg-4 col-md-6 mb-4">
           <div class="card">
             <img class="card-img-top" src="@|pic|" alt="@|alt|">
             <div class="card-body">
               <h5 class="card-title">@|name|</h5>
               <p class="card-text">@|body|</p>
             </div>
@;             <div class="card-footer">
@;               <a href="#" class="btn btn-primary">Find Out More!</a>
@;             </div>
           </div>
        </div>})

<!-- Jumbotron Header -->
<figure class="licensed-img text-center jumbotron">
  <h3>Trends in Functional Programming</h3>
  <h5>@|tfp-dates|</h5>
  <h5>@|tfp-venue|</h5>
    <img class="rounded figure-img img-fluid" alt="Downtown Vancouver, at sunset" src="@|uri-root|resources/vancouver.jpg"></img>
    <div class="figure-caption license"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en">CC BY-SA 3.0</a></div>
</figure>

<p>The symposium on Trends in Functional Programming (TFP) is an international
forum for researchers with interests in all aspects of functional programming,
taking a broad view of current and future trends in the area.
It aspires to be a lively environment for presenting the latest research
results, and other contributions.
See the <a href="@|uri-root|call-for-papers.html">the call for papers</a> for
more details about contributions.</p>

<p>TFP 2019 will be the main event of a pair of functional programming
events, and will take place @|tfp-dates|.
TFP 2019 will be accompanied by the International Workshop on Trends in
Functional Programming in Education (TFPIE), which will take place on
@|tfpie-start-date|.</p>

<p>The general chairs are <a href="//www.cs.ubc.ca/~rxg/">Ron Garcia</a> (<span
class="ubc">rxg</span>) and <a href="//williamjbowman.com">William J.
Bowman</a> (<span class="wjb">wjb</span>).
Contact them general questions.
Contact William for issues with the website.
</p>

@(when display-speakers?
   @list{
<!-- Page Features -->
@section-header{Invited Speakers!}
<div class="row text-center">
@(for/list ([i invited-speakers])
   (make-speaker-card
    (first i)
    (second i)
    (third i)
    (fourth i)))
<!-- /.row -->
</div>})

@(render-calendar)
