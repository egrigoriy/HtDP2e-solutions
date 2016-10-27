;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;you want to decide whether today is an appropriate day to go to the mall.
; You go to the mall if it is either not sunny or if today is Friday

(define sunny #true) 
(define friday #false)

;create an expression that computes whether sunny is false or friday is true

;; logical implication!
(or (not sunny) friday)

(define should-go-to-mall (or (not sunny) friday))