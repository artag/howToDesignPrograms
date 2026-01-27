;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex012) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 12.
; Определите функцию `cvolume`, которая принимает длину ребра куба
; и вычисляет его объем.
; Определите функцию `csurface`, вычисляющую площадь поверхности куба.

; Подсказка.
; Куб - это трехмерная объемная фигура, ограниченная 6 квадратами - гранями.
; Площадь поверхности куба легко определить, зная площадь одного квадрата,
; которая равна квадрату длины его стороны.
; Объем куба - это произведение длины ребра на площадь одной грани.

(define (cvolume x)
  (* x x x))

(define (csurface x)
  (* 6 x x))

(cvolume 5)
(csurface 4)
