;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise38) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 38. Design the function string-remove-last, which produces a string like the given one with the last character removed

; string -> string
; removes the last character from a string
; given "world" expect "worl"
(define (string-remove-last a-string)
  (substring a-string 0 (- (string-length a-string) 1)))

(check-expect (string-remove-last "world") "worl")