;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex039) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 39.
; Создать изображение автомобиля `CAR`.
; Его размер пределяется относительно размера колес:
; `(define WHEEL-RADIUS 5)`.

(require 2htdp/image)

; "Физические" константы
(define WHEEL-RADIUS 10)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 2))

(define BODY-HEIGHT (* WHEEL-RADIUS 1))
(define BODY-LENGTH (* WHEEL-DISTANCE 2))

(define CAR-HEIGHT (* WHEEL-RADIUS 2))
(define CAR-LENGTH (* WHEEL-DISTANCE 4))

; Графические константы
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
  (rectangle WHEEL-DISTANCE 0 "solid" "white"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

(define CAR
  (above
   (rectangle BODY-LENGTH BODY-HEIGHT "solid" "red")
   (rectangle CAR-LENGTH CAR-HEIGHT "solid" "red")
   BOTH-WHEELS))

CAR