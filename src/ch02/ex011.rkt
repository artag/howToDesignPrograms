;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex011) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 11.
; Определите функцию, которая принимает два числа, `x` и `y`
; и вычисляет расстояние от точки `(x, y)` до начала координат.

(define (distance x y)
  (sqrt
    (+ (sqr x)
       (sqr y))))

(distance 3 4)
(distance 12 5)
