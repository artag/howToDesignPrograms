;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02_to_celsius) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Программа, читает температуру по Фаренгейту из файла,
; преобразует ее в температуру по Цельсию и выводит результат
; в другой файл.

(require 2htdp/batch-io)   ;  write-file - выводит строку в консоль

; Формула преобразования
(define (to-celsius f)
  (* 5/9
     (- f 32)))

(define (convert in out)
  (write-file out
    (string-append
      (number->string
        (to-celsius
          (string->number
            (read-file in))))
    "\n")))

; ===

(write-file "sample.dat" "212")    ; "sample.dat"
(convert "sample.dat" "out.dat")   ; "out.dat"
(read-file "out.dat")              ; 100
