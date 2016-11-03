;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 17. Define the function image-classify, which consumes an image
;and conditionally produces "tall" if the image is taller than wide,
;"wide" if it is wider than tall,
;or "square" if its width and height are the same.

(require 2htdp/image)

(define TALL (rectangle 10 100 "solid" "red"))

(define SQUARE (rectangle 100 100 "solid" "red"))

(define WIDE (rectangle 100 10 "solid" "red"))

(check-expect (image-classify TALL) "tall")
(check-expect (image-classify SQUARE) "square")
(check-expect (image-classify WIDE ) "wide")

(define (image-classify image)
  (cond [(> (image-height image)
            (image-width image))
         "tall"]
        [(= (image-height image)
            (image-width image))
         "square"]
        [(< (image-height image)
            (image-width image))
         "wide"]))
