;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 34. Design the function string-first, which extracts the first character from a non-empty string. Don’t worry about empty strings.

; string -> string
; extracts the first character from a string
; given: "hello", expect "h"
(define (string-first a-string)
  (substring a-string 0 1))

(check-expect (string-first "hello") "h")