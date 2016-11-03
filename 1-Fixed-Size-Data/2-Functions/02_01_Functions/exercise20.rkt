;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 20. Define the function string-delete, which consumes a string plus a number i and deletes the ith position from str.
; Assume i is a number between 0 (inclusive) and the length of the given string (exclusive).See exercise 4 for ideas.
;Can string-delete deal with empty strings?

(check-expect (string-delete "helloworld" 0) "elloworld")
(check-expect (string-delete "helloworld" 5) "helloorld")
(check-expect (string-delete "helloworld" 9) "helloworl")
;(check-expect (string-delete "" 0) "")

(define (string-delete str position)
  (string-append (substring str 0 position)
                 (substring str (+ position 1))))

; can not handle empty strings ->
;substring: starting index is out of range starting index: 1
;  valid range: [0, 0]
;  string: ""