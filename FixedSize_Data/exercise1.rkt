;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 1. Write down an expression that computes the distance of this point to the origin, that is, a point with the coordinates (0,0).
(define x 12)
(define y 5)
(define distance-to-origin (sqrt (+ (* x x) (* y y))))