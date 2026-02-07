;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex038) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 38.
; Спроектируйте функцию `string-remove-last`,
; которая создает строку, подобную данной, но без последнего символа.


; string -> string
; Создает строку подобную данной, но без последнего символа.
;
(check-expect (string-remove-last "a") "")
(check-expect (string-remove-last "ef") "e")
(check-expect (string-remove-last "hello world") "hello worl")
;
(define (string-remove-last str)
  (substring str
             0
             (- (string-length str) 1)))
