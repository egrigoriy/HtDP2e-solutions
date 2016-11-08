;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise36) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 36. Design the function image-area, which counts the number of pixels in a given image.

(require 2htdp/image)

; image -> number
; given a rectagle 20x30, expect 600
; count the number of pixels for a given image
(define (image-area image)
         (* (image-width image)
            (image-height image)))

(check-expect (image-area (rectangle 20 30 "solid" "blue")) 600)