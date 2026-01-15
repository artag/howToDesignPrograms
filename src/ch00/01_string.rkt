;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_string) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
"--- Сложение строк"
(string-append "hello " "world")
; или
(string-append "hello" " " "world")

"--- Определение длины строки и работа с ней"
(string-length "hello world")         ; 11
(+ (string-length "hello world") 20)  ; 31

"--- Преобразование строки в число"
(string->number "42")
(string->number "hello world")        ; #false
ы