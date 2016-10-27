;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname place-rocket.v1-exercices-ufo-blue-backgnd) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;How would you change the program so that it depicts the landing of a green UFO (unidentified flying object)? Drawing the UFO is easy:

;(overlay (circle 10 "solid" "green") 
;         (rectangle 40 4 "solid" "green")) 

;How would you change the program so that the background is always blue?

(require 2htdp/image)
(require 2htdp/universe)

; constants


(define HEIGHT 400)
(define WIDTH 200)
(define CENTER  (/ WIDTH 2))
(define MTSCN  (empty-scene  WIDTH HEIGHT "blue"))

(define UFO (overlay (circle 10 "solid" "green") 
                        (rectangle 40 4 "solid" "green")))

(define UFO-CENTER-TO-TOP
  (-  HEIGHT (/ (image-height UFO) 2)))

;functions
(define (place-ufo.v5 height_position)
  (cond [(<= height_position UFO-CENTER-TO-TOP)
         (place-image UFO
                      CENTER height_position
                      MTSCN)]
        [(> height_position UFO-CENTER-TO-TOP)
         (place-image UFO
                      CENTER UFO-CENTER-TO-TOP
                      MTSCN)]))

