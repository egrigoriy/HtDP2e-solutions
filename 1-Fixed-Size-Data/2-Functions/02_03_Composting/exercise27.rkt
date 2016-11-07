;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; The owner of a monopolistic movie theater in a small town has complete freedom in setting ticket prices.
; The owner would like to know the exact relationship between profit and ticket price so that he can maximize his profit.

(define (attendees ticket-price)
  (- 120 (* (/ (- ticket-price 5)
               0.1)
            15)))

(check-expect (attendees 5) 120)
(check-expect (attendees 5.1) 105)
(check-expect (attendees 4.9) 135)

(define (revenue price)
  (* (attendees price)
     price))

(check-expect (revenue 5) 600)
(check-expect (revenue 5.1) 535.5)
(check-expect (revenue 4.9) 661.5)

(define (cost price)
  (+ 180
     (* 0.04
        (attendees price))))

(check-expect (cost 5) 184.8)
(check-expect (cost 5.1) 184.2)
(check-expect (cost 4.9) 185.4)

(define (profit price)
  (- (revenue price)
     (cost price)))

  




  
