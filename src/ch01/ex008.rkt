;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex008) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 8.
; Создайте условное выражение, которое определяет, какая сторона
; изображения больше - ширина или высота.
; - Изображение должно быть помечено как "tall", если его высота больше.
; - Изображение должно быть помечено как "wide", если его ширина больше.
; - Если длина равна ширине, то изображение должно быть помечено ыкак "square".

(require 2htdp/image)

; Константы
(define wide-img
  (rectangle 80 20 "solid" "blue"))
(define tall-img
  (rectangle 20 80 "solid" "red"))
(define star-img
  (star 30 "solid" "orange"))
(define circle-img
  (circle 20 "solid" "yellow"))
  

; Функции
(define (name-image image)
  (if (is-square image)
      "square"
      (is-tall-or-wide image)))

(define (is-square image)
  (=
    (image-width image)
    (image-height image)))

(define (is-tall-or-wide image)
  (if (is-tall image)
      "tall" "wide"))

(define (is-tall image)
  (<
    (image-width image)
    (image-height image)))

(define (is-wide image)
  (>
    (image-width image)
    (image-height image)))


; Запуск
(name-image wide-img)
wide-img
"==="

(name-image tall-img)
tall-img
"==="

(name-image star-img)
star-img
"==="

(name-image circle-img)
circle-img