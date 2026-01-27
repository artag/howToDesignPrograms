;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex009) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 9.
; Добавьте следующую строку в область определений
; в DrRa­cket: `(define in ...)`.
; Создайте выражение, преобразующее:
; 1. число `in` в положительное число
; 2. строку `in` в длину строки
; 3. изображение `in` в площадь
; 4. число `in` уменьшить на 1, если оно не равно 0 или неотрицательное
; 5. `#true` в 10, `#false` в 20.

(require 2htdp/image)

; 1. число `in` в положительное число
(define (make-number-pos in)
  (if (number? in)
      (if (<= in 0)
          (abs in)
          in)
      in))

(make-number-pos -33)
(make-number-pos 0)
(make-number-pos 42)
(make-number-pos "not-number")

"==="

; 2. строку `in` в длину строки
(define (get-string-length in)
  (if (string? in)
      (string-length in)
      "Can not get string length. Input value is not string."))

(get-string-length "some")
(get-string-length 33)

"==="

; 3. изображение `in` в площадь
(define (get-image-area in)
  (if (image? in)
      (* (image-height in)
         (image-width in))
      "Can not get image area. Input value is not image."))

(define rec (rectangle 30 20 "solid" "blue"))
rec
(get-image-area rec)
(get-image-area "not image")

"==="

; 4. число `in` уменьшить на 1, если оно не равно 0 или неотрицательное
(define (process-number in)
  (if (number? in)
      (if (> in 0)
          (- in 1)
          in)
      "Input value is not number"))

(process-number -2)
(process-number 0)
(process-number 3)
(process-number "some_string")

"==="

; 5. `#true` в 10, `#false` в 20.

(define (process-bool in)
  (if (boolean? in)
      (if in
          10
          20)
      "Input value is not boolean."))

(process-bool #true)
(process-bool #false)
(process-bool 42)
(process-bool "true")
