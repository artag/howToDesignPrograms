;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex017) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 17.
; Определите функцию `image-classify`,
; которая принимает изображение и возвращает
; "tall" (высокое), если высота изображения больше ширины;
; "wide" (широкое), если высота изображения меньше ширины
; и "square" (квадратное), если ширина равна высоте.

(require 2htdp/image)

(define (image-classify img)
  (if (image? img)
      (cond
        [(> (image-height img)
            (image-width img))
         "tall"]
        [(< (image-height img)
            (image-width img))
         "wide"]
        [(= (image-height img)
            (image-width img))
         "square"])
      "unknown"))

(define r1 (rectangle 40 10 "solid" "orange"))
(define r2 (rectangle 20 35 "solid" "blue"))
(define r3 (rectangle 15 15 "solid" "red"))

r1
(image-classify r1)

r2
(image-classify r2)

r3
(image-classify r3)

(image-classify 42)
