;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex003) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 3.
; Вставка символа по индексу в слово 

(define str "helloworld")
(define i 5)

(define (insert-char char string index)
  (string-append
    (substring string 0 index)
    char
    (substring string index)))

; Запуск
(insert-char "_" str i)     ; "hello_world"
