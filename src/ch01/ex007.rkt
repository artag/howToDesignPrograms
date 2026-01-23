;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex007) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 7.
; Вы ходите в торговый центр либо когда пасмурно, либо по пятницам.
; Теперь попробуйте принять решение, используя логические операции.
; Идти или нет.

(define sunny #true)
(define friday #false)

; Запуск
(or (not sunny) friday)
