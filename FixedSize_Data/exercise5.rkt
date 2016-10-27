;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Use the image primitives to create the image of a simple 
;•automobile
;•boat
;•tree
;Make sure you can easily change the scale of the entire image.
(require 2htdp/image)

(define wheel (circle 10 "solid" "black"))
(define body (overlay/xy (rectangle 100 25 "solid" "red")
                         25 -15
                         (rectangle 50 15 "solid" "blue")))
(define automobile (overlay/xy (overlay/xy body
                                           5 30
                                           wheel)
                               75 30
                               wheel))
  
