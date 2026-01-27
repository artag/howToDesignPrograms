;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex020) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 20.
; Определите функцию `string-delete`,
; которая принимает строку `str` и число `i`
; и удаляет из `str` символ в `i-й` позиции.
; Предполагается, что `i` - это число в диапазоне
; от 0 до длины данной строки (не включая).

(define (string-delete str i)
  (if (> (string-length str)
         i)
      (string-append (substring str 0 i)
                     (substring str (+ i 1)))
      str))

(string-delete "helloworld" 0)
(string-delete "helloworld" 1)
(string-delete "helloworld" 2)
(string-delete "helloworld" 3)
(string-delete "helloworld" 4)
(string-delete "helloworld" 5)
(string-delete "helloworld" 6)
(string-delete "helloworld" 7)
(string-delete "helloworld" 8)
(string-delete "helloworld" 9)
(string-delete "helloworld" 10)
(string-delete "helloworld" 11)
(string-delete "helloworld" 12)
