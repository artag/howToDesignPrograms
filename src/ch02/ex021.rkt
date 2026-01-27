;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex021) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 21.
; Используйте движок пошаговых вычислений в DrRa­cket,
; чтобы увидеть, как вычисляется выражение `(ff (ff 1))`.
; Также попробуйте выражение `(+ (ff 1) (ff 1))`.

(define (ff a)
  (* 10 a))

(ff (ff 1))         ; 100
(+ (ff 1) (ff 1))   ; 20
