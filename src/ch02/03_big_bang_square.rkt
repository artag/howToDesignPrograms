;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 03_big_bang_square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Квадрат в отдельном окне, который уменьшается.
; При нажатии любой кнопки восстанавливает свой размер.

(require 2htdp/image)     ; big-bang
(require 2htdp/universe)  ; square

(define (number->square s)
  (square s "solid" "red"))


; Просто выводит квадрат в отдельном окне
; (big-bang 100 [to-draw number->square])


; Квадрат в отдельном окне, который уменьшается
;(big-bang 100
;  [to-draw number->square]
;  [on-tick sub1]
;  [stop-when zero?])

; Принимает текущее состояние и строку, описывающую событие клавиатуры,
; и возвращает новое состояние.
(define (reset s ke)
  100)

; Квадрат в отдельном окне, который уменьшается.
; При нажатии любой кнопки восстанавливает свой размер.
;(big-bang 100
;  [to-draw number->square]
;  [on-tick sub1]
;  [stop-when zero?]
;  [on-key reset])
