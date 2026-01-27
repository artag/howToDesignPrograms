;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex016) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 16.
; Определите функцию `image-area`,
; которая подсчитывает количество пикселей в заданном изображении.

(require 2htdp/image)

(define (image-area img)
  (if (image? img)
      (* (image-width img)
         (image-height img))
      0))

(image-area (rectangle 20 30 "solid" "orange"))
(image-area "string")
(image-area 1)
