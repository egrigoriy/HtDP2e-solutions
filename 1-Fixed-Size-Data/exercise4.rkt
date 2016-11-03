;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; create an expression that deletes the ith position from str.
; Clearly this expression creates a shorter string than the given one.
; Which values for i are legitimate?

(define str "helloworld") 
(define ind "0123456789") 
(define i 4) 

str
(string-append (substring str 0 i) (substring str (+ i 1)))