;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex025) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 25.
; Взгляните на попытку решить упражнение 17.
; Помогает ли пошаговое выполнение применения функции предложить исправление?

(require 2htdp/image)

(define (image-classify img)   ; Не совсем правильная реализация
  (cond
    [(>= (image-height img)
         (image-width img))
     "tall"]
    [(= (image-height img)
        (image-width img))
     "square"]
    [(<= (image-height img)
         (image-width img))
     "wide"]))

(image-classify (rectangle 10 30 "solid" "red"))
(image-classify (rectangle 30 10 "solid" "blue"))
(image-classify (rectangle 20 20 "solid" "orange"))
