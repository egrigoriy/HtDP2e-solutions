;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise35) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 35. Design the function string-last, which extracts the last character from a non-empty string

; string -> string
; extracts the last caracter from a non-empty string s
; given "hello", expect "o"
; given "world_", expect "_"
(define (string-last s)
  (substring s (- (string-length s)
                  1)))

(check-expect (string-last "hello") "o")
(check-expect (string-last "world_") "_")
(check-expect (string-last "world_ ") " ")
