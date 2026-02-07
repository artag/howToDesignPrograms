;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex031) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 31.
; Основа - программа `letter`.
; Здесь пример пакетной программы, составляющей заготовки писем, которая
; читает имена из трех разных файлов и сохраняет письмо в четвертом файле.
; Создать соответствующие файлы, запустить главную функцию main.
; Проверить, выводит ли программа ожидаемое письмо в заданный файл.

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

; Главная функция
(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))

; === Запуск

(write-file "name.txt" "Ivan")
(write-file "surname.txt" "Ivanov")
(write-file "signature.txt" "Petya")
(main "name.txt" "surname.txt" "signature.txt" "letter.txt")
(read-file "letter.txt")
