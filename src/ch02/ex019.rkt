;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex019) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 19.
; Определите функцию `string-insert`,
; которая принимает строку `str` и число `i`
; и вставляет `_` в `i-ю` позицию строки `str`.
; Предполагается, что `i` - это число в диапазоне
; от 0 до длины заданной строки (включительно).

(define (string-insert str i)
  (if (>= (string-length str)
         i)
      (string-append (substring str 0 i)
                     "_"
                     (substring str i))
      str))

(string-insert "helloworld" 0)
(string-insert "helloworld" 1)
(string-insert "helloworld" 2)
(string-insert "helloworld" 3)
(string-insert "helloworld" 4)
(string-insert "helloworld" 5)
(string-insert "helloworld" 6)
(string-insert "helloworld" 7)
(string-insert "helloworld" 8)
(string-insert "helloworld" 9)
(string-insert "helloworld" 10)
(string-insert "helloworld" 11)
(string-insert "helloworld" 12)
