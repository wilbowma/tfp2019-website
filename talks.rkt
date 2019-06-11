#lang at-exp racket/base

@(require "config.rkt")
@(provide (all-defined-out))

@(struct talk (title authors abstract resources))

@;Meant to be called with each argument on a new line
@(define (make-talk title _0 authors _1 abstract _2 link)
   (talk title authors abstract link))

@(define (speaker name)
   @list{<strong>@|name|</strong>})

@(define authors list)
@(define abstract list)
@(define slides list)
@(define preprint list)
@(define (resources slides _ pdf)
   (list (and slides @hyperlink[slides]{Slides}) (and pdf @hyperlink[pdf]{Preprint})))

@(define tbd-talk "TBD")

@(define break "Coffee Break")

@(define lunch "Lunch")

@(define example-talk
   @make-talk{A Very Cool Paper
              @authors{@speaker{William J. Bowman}, Ron Garcia}
              @abstract{Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.}
              @resources{@slides{#}
                         @preprint{#}}})

@(define nikhil-keynote
   @make-talk{Keynote: Structuring the Verification of Imperative Programs with Functional Programming
              @authors{@speaker{Nikhil Swamy}}
              @abstract{<p>Stooping to program low-level, imperative code is sometimes
              unavoidable, but specifying and verifying low level code can,
              thankfully, be significantly more abstract.</p>

              <p>F* (https://fstar-lang.org) is a programming language and proof
              assistant that enables the construction of verified C and
              assembly programs using dependent type theory.</p>

              <p>At the core of F*'s verification methodology is to specify
              programs using indexed types, where the indexes capture
              correctness properties of programs using classic functional
              programming patterns "one level up". For instance, effectful
              computations in F* are, broadly, described using monad-indexed
              monads; data manipulation code is typed using lens-indexed
              lenses; zero-copy, imperative parsers and built from a library of
              parser-indexed parser combinators; and so on.</p>

              <p>In this talk, I'll give a taste of F* programming through a
              series of examples, drawing on experience from Project
              Everest (@url{https://project-everest.github.io}) which uses F* to
              build and deploy high performance, verified, secure
              implementations of cryptographic communication protocols.</p>}
              @resources[#f #f #f]
              })

@(define frank-keynote
   @make-talk{Keynote: Probabilistic Programming
              @authors{@speaker{Frank Wood}}
              @abstract{<p>Probabilistic programming uses programming language techniques to make it easy to denote and perform inference in the kinds of probabilistic models that inform decision-making, accelerate scientific discovery, and underlie modern attacks on the problem of artificial intelligence.  Deep learning uses programming language techniques to automate supervised learning of program parameter values by gradient-based optimization.  What happens if we put them together?  This talk will review probabilistic programming. It will also introduce inference compilation and address how linking deep learning and probabilistic programming is leading to powerful new AI techniques while also opening up significant new research questions.</p>}
              @resources[#f #f #f]
              })

@(define talk1
   @make-talk{Towards Exploring Closureless CPS
              @authors{@speaker{Marco T. Morazan}, Shamil Dzhatdoyev, Josephine Des Rosiers}
              @abstract{<p>Transforming programs into continuation-passing style is a common intermediate form that allows programs to be evaluated using a bounded amount of control context. In essence, the transformation into continuation-passing style makes the control context explicit and eliminates all non-tail function calls. The explicit control context is traditionally thought of as a function, known as a continuation, that knows how to finish the computation. Although this abstraction is attractive, naive implementations can suffer from excessive closure allocations for continuations. In fact, an impressive amount of work has been done to reduce closure allocation for programs in continuation-passing style with varying degrees of success. This article describes a newly undertaken project to explore novel implementation strategies for closureless CPS. That is, this article presents a CPS transformation that eliminates the need to dynamically allocate continuation closures by storing on a stack the information that a traditional continuation would require. There are, of course, several design choices that need to be made to represent a program in closureless continuation-passing style. This article outlines the different representations that our new project proposes to empirically study. In addition, the articles outlines the potential advantages and disadvantages of each proposed representation.</p>}
              @resources[#f #f #f]})

@(define talk2
   @make-talk{Performance Analysis of Zippers
              @authors{@speaker{Vít Šefl}}
              @abstract{<p>The zipper is a powerful technique of representing purely functional data structures in a way that allows fast access to a specific element. It is often used in cases where the imperative approach would use a mutable pointer. However, it is unclear whether zippers offer the same performance benefit of mutable pointers. We attempt to answer this question by comparing the performance gain of zippers and mutable pointers in two common scenarios and three different languages: C++, C#, and Haskell.</p>}
              @resources[#f #f #f]})

@(define talk3
   @make-talk{Quotient Types by Normalization in Cedille
              @authors{@speaker{Andrew Marmaduke}, Christopher Jenkins, Aaron Stump}
              @abstract{<p>Reasoning about programs and their values is a common motivation for a dependently typed programming language. However, sometimes the privileged equality of the language is not the desired equality of the programmer. Quotient types are a solution to this problem where, for the values of the quotient type, the privileged equality of the language is equivalent to a desired equivalence relation. We demonstrate an efficient encoding of quotient types defined by normalization in Cedille, a new dependently typed programming language, with concrete examples and a generic type. Moreover, we formalize two variants of generic function lifting, one of which is zero run-time cost, and other generic combinators for composing quotients.</p>}
              @resources[#f #f #f]})

@(define talk4
   @make-talk{Early Experience in Teaching the Basics of Functional Language Design with a Language Type Checker
              @authors{@speaker{Matteo Cimini}}
              @abstract{<p>In this paper we set forth the thesis that a language type checker can be an effective tool in teaching language design principles of functional languages. We have used TypeSoundnessCertifier, a tool for type checking languages and certifying their soundness, in the context of a graduate course in programming languages. In this paper, we offer details on how the course took place, and we report on some data gathered during evaluations. Although the work reported in this paper is not statistically significant, we share our experience to show the type of studies that we are conducting, and to inspire similar and larger studies towards gathering evidence for, or against, our thesis.</p>}
              @resources[#f #f #f]})

@(define talk5
   @make-talk{Verifying Selective CPS Transformation for Shift and Reset
              @authors{@speaker{Chiaki Ishio}, Kenichi Asai}
              @abstract{<p>A selective CPS transformation enables us to execute a program with delimited control operators, shift and reset, in a standard functional language without support for control operators. The selective CPS transformation dispatches not only on the structure of the input term but also its purity: it transforms only those parts that actually involve control effects. As such, the selective CPS transformation consists of many rules, each for one possible combination of the purity of subterms, making its verification tedious and error-prone. In this paper, we first formalize (a monomorphic version of) the selective CPS transformation in the Agda proof assistant. We use intrinsically typed term and context representations together with parameterized higher-order abstract syntax (PHOAS) to represent binding structures. We then prove the correctness of the transformation, i.e., the equality of terms is preserved by the CPS transformation. Thanks to the formalization, we confirmed that all the rules of the selective CPS transformation in the previous work are correct, but found that one lemma on the behavior of shift was not precise.</p>}
              @resources[#f #f #f]})

@(define talk6
   @make-talk{How to Specify it! A Guide to Writing Properties of Pure Functions.
              @authors{@speaker{John Hughes}}
              @abstract{<p>Many developers trying property-based testing for the first time find it difficult to identify properties to write—and find the simple examples in tutorials difficult to generalize. This is known as the oracle problem, and it is common to all approaches to testing that use test case generation. In this paper, therefore, we take a simple—but non-trivial—example of a purely functional data structure, and present five different approaches to writing properties, along with the pitfalls of each to keep in mind. We compare and constrast their effectiveness with the help of eight buggy implementations. We hope that the concrete advice presented here will enable readers to side-step the “where do I start?” question, and quickly derive the benefits that property-based testing has to offer.</p>}
              @resources[#f #f #f]})

@(define talk7
   @make-talk{Type Inference for Rank 2 Gradual Intersection Types
              @authors{@speaker{Pedro Ângelo}, Mário Florido}
              @abstract{<p>In this paper we extend a rank 2 intersection type system with gradual types. We then show that the problem of finding a principal typing for a lambda term, in a rank 2 gradual intersection type system is decidable. We present a type inference algorithm which builds the principal typing of a term through the generation of type constraints which are solved by a new extended unification algorithm constructing the most general unifier for rank 2 gradual intersection types.</p>}
              @resources[#f #f #f]})

@(define talk8
   @make-talk{Set Constraints, Pattern Match Analysis, and SMT
              @authors{@speaker{Joseph Eremondi}}
              @abstract{<p>We present a translation that converts a set constraint formula into an SMT problem. Our technique allows for arbitrary boolean combinations of positive or negative set constraints,and leverages the performance of modern solvers such as Z3. To show the usefulness of unrestricted set constraints,we use them to devise a pattern match analysis for functional languages. This analysis ensures that missing cases of pattern matches are always unreachable. We implement our analysis in the Elm compiler and show that the our translation is fast enough to be used in practical verification.</p>}
              @resources{@slides{https://eremondi.com/pdf/TFP19_slides.pdf}
                         @preprint{https://arxiv.org/abs/1905.09423}}})

@(define talk9
   @make-talk{Improving Structure and Performance of iTask SVG Editors
              @authors{@speaker{Peter Achten}, Rinus Plasmeijer}
              @abstract{<p>Interactive web applications need to handle the communication between server and client web browsers. In the iTasks system, this is delegated to a general purpose component, called editor. Editors allow fine grained control over the point of execution on the server, using native code, which is efficient, and on the client, using JavaScript, which is much less efficient. One particular use case of editors uses the W3C Scalable Vector Graphics standard to allow applications to fully customize the look and feel of an editor, called SVG editor. The current implementation is operational, but there is room for improvement, both in terms of code structure and performance. We show how to improve the code structure of SVG editors and at the same time increase their performance. Both improvements are obtained by separating the logic into two embeddings: first, a deep embedding to obtain an isomorphic representation of the image code, and second, a shallow embedding to calculate the actual SVG rendering and proper layout of the deep representation of the image.</p>}
              @resources[#f #f #f]})


@(define talks (list talk1 #;talk2 talk3 talk4 talk5 talk6 talk7 talk8 talk9))

@(define john-invited-talk
   @make-talk{Invited: Experiences with QuickCheck: Testing the Hard Stuff and Staying Sane
              @authors{@speaker{John Hughes}}
              @abstract{<p>QuickCheck is a random testing tool that Koen Claessen and I invented, which has since become the testing tool of choice in the Haskell community. In 2006 I co-founded Quviq, to develop and market an Erlang version, which we have since applied for a wide variety of customers, encountering many fascinating testing problems as a result. This talk introduces Quviq QuickCheck, and in particular the extensions made for testing stateful code, via a toy example in C. It goes on to describe the largest QuickCheck project to date, which developed acceptance tests for AUTOSAR C code on behalf of Volvo Cars. Finally it explains a race detection method that nailed a notorious bug plaguing Klarna, northern Europe's market leader in invoicing systems for e-commerce. Together, these examples give a reasonable overview of the way QuickCheck has been used in industrial practice.</p>}
              @resources[#f #f #f]})

@(define anglican-tutorial
   @make-talk{Invited: Anglican Tutorial: Turing-complete, functional Probabilistic Programming as a Domain Specific Language
              @authors{@speaker{Christian Weilbach}}
              @abstract{<p>Anglican is a powerful probabilistic programming system that is embedded as a DSL in the functional programming language Clojure. Introduced in 2014, it established a CPS-based compiler for a Turing complete subset of Clojure and pioneered a diverse set of concepts in the probabilistic programming community such as integration with Bayesian Optimization or amortized inference. It exploits Clojure's persistent data structures to provide a minimal,functional interface to inference algorithms. This talk both introduces Anglican with examples and describes how such a system can be implemented in a few hundred lines of code. The talk will also contrast it with the trace-based approach of PyProb, a follow-up probabilistic programming system focused on amortized inference with deep learning in Python. Finally we will emphasize the trade-offs and challenges between functional environments and the popular Python environment as design objectives for a new functional, probabilistic programming language for numerical and statistical programming.</p>}
              @resources[#f #f #f]})
