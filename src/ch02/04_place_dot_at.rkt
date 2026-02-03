;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 04_place_dot_at) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Интерактивная программа
; Рисует точку внизу окна.
; Точка плавно поднимается вверх и останавливается в самом верху.
; По нажатии любой клавиши прекращение подъема точки.

(require 2htdp/image)     ; circle
(require 2htdp/universe)  ; big-bang

(define BACKGROUND (empty-scene 100 300))
(define DOT (circle 3 "solid" "red"))

(define (main y)
  (big-bang y
    [on-tick sub1]
    [stop-when zero?]
    [to-draw place-dot-at]
    [on-key stop]))

(define (place-dot-at y)
  (place-image DOT 50 y BACKGROUND))

(define (stop y ke)
  0)

; RUN
(main 300)
