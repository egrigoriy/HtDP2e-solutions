;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise37) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 37. Design the function string-rest, which produces a string like the given one with the first character removed

; string -> string
; removes 1st character from a string 
; given "hello" expect "ello"
(define (string-rest a-string)
   (substring a-string 1))

(check-expect (string-rest "hello") "ello")