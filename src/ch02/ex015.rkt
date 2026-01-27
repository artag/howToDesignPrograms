;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex015) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 15.
; Определите функцию `==>`.
; Она должна принимать 2 логических значения
; (пусть это будут параметры с именами `sunny` и `friday`)
; и возвращать `#true`, если `sunny` имеет ложное значение или
; `friday` - истинное.

(define (==> sunny friday)
  (or (not sunny)
      friday))

(==> #false #false)
(==> #false #true)
(==> #true #false)
(==> #true #true)
