;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; The owner of a monopolistic movie theater in a small town has complete freedom in setting ticket prices.
; The owner would like to know the exact relationship between profit and ticket price so that he can maximize his profit.

(define AVERAGE_PRICE 5.00)
(define AVERAGE_ATTENDEES 120)
(define DELTA_PRICE 0.1)
(define DELTA_ATTENDEES 15)
(define COST_FIXED_PART 180)
(define COST_PER_ATTENDEE 0.04)

;---
(define (attendees ticket-price)
  (- AVERAGE_ATTENDEES (* (/ DELTA_ATTENDEES
                             DELTA_PRICE)
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