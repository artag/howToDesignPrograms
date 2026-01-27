;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex018) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 18.
; Определите функцию `string-join`, которая принимает две строки
; и объединяет их в одну строку, добавляя символ `_` между ними.

(define (string-join str1 str2)
  (string-append (if (string? str1)
                     str1
                     "")
                 "_"
                 (if (string? str2)
                     str2
                     "")
                 ))

(string-join "hello" "world")
(string-join 1 "world")
(string-join "hello" 1)
(string-join 1 2)
(string-join "" "")
