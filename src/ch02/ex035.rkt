;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex035) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 35.
; Спроектируйте функцию `string-last`,
; которая извлекает последний символ (`1String`) из непустой строки.

; Строка -> символ
; Извлекает последний символ из непустой строки.
;
(check-expect (string-last "hello_world") "d")
(check-expect (string-last "he") "e")
(check-expect (string-last "d") "d")
;
(define (string-last str)
  (substring str
             (- (string-length str)
                1)))
