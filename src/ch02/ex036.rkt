;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex036) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 36.
; Спроектируйте функцию `image-area`,
; которая подсчитывает количество пикселей в заданном изображении.

(require 2htdp/image)

; Image -> integer
; Подсчитывает количество пикселей в заданном изображении.
;
(check-expect (image-area (rectangle 1 1 "solid" "black"))
              1)
(check-expect (image-area (rectangle 4 2 "solid" "black"))
              8)
(check-expect (image-area (rectangle 5 10 "solid" "black"))
              50)
(check-expect (image-area (empty-scene 10 10))
              100)
;
(define (image-area img)
  (* (image-height img)
     (image-width img)))
