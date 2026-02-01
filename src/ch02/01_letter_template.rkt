;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_letter_template) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Программа, которая формирует шаблон письма.

(require 2htdp/batch-io)   ;  write-file - выводит строку в консоль

; Главная функция
(define (letter fst lst signature-name)
  (string-append
   (opening fst)
   "\n\n"
   (body fst lst)
   "\n\n"
   (closing signature-name)))

; 1 вспомогательная функция
(define (opening fst)
  (string-append "Dear " fst ","))

; 2 вспомогательная функция
(define (body fst lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))

; 3 вспомогательная функция
(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))

(write-file 'stdout (letter "Matthew" "Fisler" "Felleisen"))
(write-file 'stdout (letter "Kathi" "Felleisen" "Findler"))
