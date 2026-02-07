;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex037) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 37.
; Спроектируйте функцию `string-rest`,
; которая создает строку, подобную данной, но без первого символа.


; string -> string
; Создает строку, подобную данной, но без первого символа.
;
(check-expect (string-rest "f") "")
(check-expect (string-rest "abc") "bc")
(check-expect (string-rest "hello world") "ello world")
;
(define (string-rest str)
  (substring str 1))