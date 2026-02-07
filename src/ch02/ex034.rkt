;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex034) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 34.
; Спроектируйте функцию `string-first`,
; которая извлекает первый символ (`1String`) из непустой строки.
; Считайте пока, что функция никогда не будет получать пустые строки.


; Строка -> символ
; Извлекает первый символ из непустой строки.
;
(check-expect (string-first "d") "d")
(check-expect (string-first "hello_world") "h")
(check-expect (string-first "abc def") "a")
;
(define (string-first str)
  (substring str 0 1))
