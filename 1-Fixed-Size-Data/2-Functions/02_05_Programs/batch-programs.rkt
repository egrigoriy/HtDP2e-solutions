;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname batch-programs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)

;(write-file "sample.dat" "123")
;(read-file "sample.dat")

(define (C f) (* (/ 5 9)
                 (- f 32)))

;(check-expect (C 32) 0)
;(check-expect (C 212) 100)
;(check-expect (C -40) -40)
;(write-file "f.dat" (string-append "212" "\n"))
;(read-file "f.dat")

(define (convert in out)
  (write-file out
              (string-append (number->string
                                 (C
                                    (string->number
                                                    (read-file in))))
                             "\n")))

; Test 32F -> 0C
;arrange
(write-file "f.dat" (string-append "32" "\n"))
;act + assert
(check-expect (read-file (convert "f.dat" "c.dat")) "0")

; Test 212F -> 100C
;arrange
(write-file "f2.dat" (string-append "212" "\n"))
;act + assert
(check-expect (read-file (convert "f2.dat" "c2.dat")) "100")

; Test -40F -> -40C
;arrange
(write-file "f3.dat" (string-append "-40" "\n"))
;act + assert
(check-expect (read-file (convert "f3.dat" "c3.dat")) "-40")