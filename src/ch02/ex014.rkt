;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex014) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 14.
; Определите функцию `string-last`,
; которая извлекает последний символ (`1String`) из непустой строки.

(define empty-string "")

(define (string-last str)
  (if (string? str)
      (if (string=? str empty-string)
          empty-string
          (substring str
                     (- (string-length str) 1)))
      empty-string))

(string-last "a")
(string-last "")
(string-last "hello, world")
(string-last 1)
(string-last #false)
