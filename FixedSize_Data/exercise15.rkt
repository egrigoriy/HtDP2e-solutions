;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 15. Define ==>. The function consumes two Boolean values, call them sunny and friday.
;Its answer is #true if sunny is false or friday is true.
;Note Logicians call this Boolean operation implication, and they use the notation sunny => friday for this purpose.

(define sunny #false)
(define friday #true)


(check-expect (==> sunny friday) #true)

; truth-table

(check-expect (==> #true #true) #true)
(check-expect (==> #true #false) #false)
(check-expect (==> #false #true) #true)
(check-expect (==> #false #false) #true)


(define (==> p q) (or (not p) q))