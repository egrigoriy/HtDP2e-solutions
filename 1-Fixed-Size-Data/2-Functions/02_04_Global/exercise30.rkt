;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 30.
;Define constants for the price optimization program so that the price sensitivity of attendance (15 people for every 10 cents) becomes a computed constant.

(define AVERAGE_PRICE 5.00)
(define AVERAGE_ATTENDEES 120)
(define DELTA_PRICE 0.1)
(define DELTA_ATTENDEES 15)
(define PRICE_SENSITIVITY_OF_ATTENDANCE (/ DELTA_ATTENDEES DELTA_PRICE))
(define COST_FIXED_PART 180)
(define COST_PER_ATTENDEE 0.04)

;---
(define (attendees ticket-price)
  (- AVERAGE_ATTENDEES (* PRICE_SENSITIVITY_OF_ATTENDANCE
                          (- ticket-price AVERAGE_PRICE))))

(check-expect (attendees 5.00) 120)
(check-expect (attendees 5.10) 105)
(check-expect (attendees 4.90) 135)

;---
(define (revenue price)
  (* (attendees price)
     price))

(check-expect (revenue 5.00) 600.00)
(check-expect (revenue 5.10) 535.50)
(check-expect (revenue 4.90) 661.50)

;---
(define (cost price)
  (+ COST_FIXED_PART
     (* COST_PER_ATTENDEE
        (attendees price))))

(check-expect (cost 5.00) 184.80)
(check-expect (cost 5.10) 184.20)
(check-expect (cost 4.90) 185.40)

;---
(define (profit price)
  (- (revenue price)
     (cost price)))

;---


  
