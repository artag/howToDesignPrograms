;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex001) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 1.
; x и y – это координаты точки. Напишите
; выражение, которое вычисляет расстояние от этой точки до начала
; координат, то есть до точки с координатами (0,0)

(define x 12)
(define y 5)

(define (distance m n)
  (sqrt (+ (sqr m) (sqr n))))

; Запуск
(distance x y)     ; 13