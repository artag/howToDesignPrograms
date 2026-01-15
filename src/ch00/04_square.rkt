;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 04_square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (y x) (* x x))

(y 1)  ; 1
(y 2)  ; 4
(y 3)  ; 9
(y 4)  ; 16
(y 5)  ; 25
