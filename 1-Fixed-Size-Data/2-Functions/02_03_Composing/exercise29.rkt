;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise29) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 29. After studying the costs of a show, the owner discovered several ways of lowering the cost.
; As a result of his improvements, he no longer has a fixed cost. He now simply pays $1.50 per attendee.

;Modify both programs to reflect this change. When the programs are modified, test them again with ticket prices of $3, $4, and $5 and compare the results.


(define AVERAGE_PRICE 5.00)
(define AVERAGE_ATTENDEES 120)
(define DELTA_PRICE 0.1)
(define DELTA_ATTENDEES 15)
(define COST_FIXED_PART 0.00)
(define COST_PER_ATTENDEE 1.50)

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

(check-expect (cost 5.00) 180)
(check-expect (cost 5.10) 157.50)
(check-expect (cost 4.90) 202.50)

;---
(define (profit price)
  (- (revenue price)
     (cost price)))

;---


(define (profit-v2 price) 
  (- (* (+ 120 
           (* (/ 15 0.1) 
              (- 5.0 price))) 
        price) 
     (* 1.50 
           (+ 120 
              (* (/ 15 0.1) 
                 (- 5.0 price)))))) 


;---

(profit 3.00) ; gives 630
(profit 4.00) ; gives 675
(profit 5.00) ; gives 420

(profit-v2 3.00) ; gives 630
(profit-v2 4.00) ; gives 675
(profit-v2 5.00) ; gives 420



  
