;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex013) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 13.
; Определите функцию `string-first`,
; которая извлекает первый символ (`1String`) из непустой строки.

(define (string-first str)
  (if (string? str)
      (if (string=? str "")
          ""
          (substring str 0 1))
      ""))

(string-first "a")
(string-first "hello, world!")
(string-first "")
(string-first 1)
(string-first #true)
