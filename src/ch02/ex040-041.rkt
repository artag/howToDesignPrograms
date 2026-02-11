;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex040-041) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 39.
; Создать изображение автомобиля `CAR`.
; Его размер пределяется относительно размера колес:
; `(define WHEEL-RADIUS 5)`.

(require 2htdp/image)
(require 2htdp/universe)

; Константы
; ==========
; Автомобиль. "Физические" константы
(define WHEEL-RADIUS 8)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 2))

(define BODY-HEIGHT (* WHEEL-RADIUS 1))
(define BODY-LENGTH (* WHEEL-DISTANCE 2))

(define CAR-HEIGHT (* WHEEL-RADIUS 2))
(define CAR-LENGTH (* WHEEL-DISTANCE 4))

; Автомобиль. Графические константы
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
  (rectangle WHEEL-DISTANCE 0 "solid" "white"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

; Автомобиль
(define CAR
  (above
   (rectangle BODY-LENGTH BODY-HEIGHT "solid" "red")
   (rectangle CAR-LENGTH CAR-HEIGHT "solid" "red")
   BOTH-WHEELS))

; Фон
(define BACKGROUND-LENGTH
  (* WHEEL-RADIUS 50))
(define BACKGROUND-HEIGHT
  (* WHEEL-RADIUS 10))
(define BACKGROUND
  (empty-scene BACKGROUND-LENGTH BACKGROUND-HEIGHT))

; Положение автомобиля
(define CAR-Y
  (* BACKGROUND-HEIGHT 0.74))

; Функции
; ==========

; world -> image
; Помещает изображение автомобиля в сцену BACKGROUND
; на расстояние x пикселей от левого края
;
(check-expect (render 50)
              (place-image CAR 50 CAR-Y BACKGROUND))
(check-expect (render 200)
              (place-image CAR 200 CAR-Y BACKGROUND))
;
(define (render x)
  (place-image CAR x CAR-Y BACKGROUND))

; world -> world
; прибавляет 3 к x, чтобы переместить автомобиль вправо
;
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)
;
(define (tock ws)
  (+ ws 3))

; world -> world
; Запускает программу с начальным состоянием
(define (main ws)
  (big-bang ws
    [on-tick tock]
    [to-draw render]))


; Запуск программы
; ==========
(main 10)
