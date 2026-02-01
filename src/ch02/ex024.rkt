;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex024) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 24.
; Есть определение функции ==>.
; С помощью движка пошаговых вычислений определите значение выражения
; (==> #true #false).

(define (==> x y)
  (or (not x) y))

(==> #true #false)    ; #false
