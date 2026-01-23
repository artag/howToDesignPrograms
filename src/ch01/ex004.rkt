;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex004) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 4.
; Удаление символа по индексу из слова 

(define str "hello_world")
(define i 5)

(define (remove-char string index)
  (string-append
    (substring string 0 index)
    (substring string
      (+ index 1))))

; Запуск
(remove-char str i)     ; "helloworld"
