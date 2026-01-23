;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex002) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 2.
; Сложение строк

(define prefix "hello")
(define suffix "world")

(define (append-words n1 n2)
  (string-append n1 "_" n2))

; Запуск
(append-words prefix suffix)     ; "hello_world"