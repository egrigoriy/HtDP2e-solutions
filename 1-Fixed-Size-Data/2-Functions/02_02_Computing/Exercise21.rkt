;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise21) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 21. Use DrRacket’s stepper to evaluate (ff (ff 1)) step by step. Also try (+ (ff 1) (ff 1)).
; Does DrRacket’s stepper reuse the results of computations?

(define (f x) 1)

(define (ff x) (* x 10))

(f (+ 1 1))

(ff (+ 1 1))

(+ (ff (+ 1 2)) 2)

(ff (ff 1))