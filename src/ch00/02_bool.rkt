;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_bool) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
"--- and"
(and #true #true)   ; #true
(and #true #false)  ; #false
"--- or"
(or #true #false)   ; #true
(or #false #false)  ; #false
"--- not"
(not #false)        ; #true

"--- Сравнение чисел"
(> 10 9)      ; #true
(< -1 0)      ; #true
(= 42 9)      ; #false
"---"
(>= 10 10)    ; #true
(<= -1 0)     ; #true
"--- Сравнение строк"
(string=? "Design" "tinker")   ; #false
(string=? "Design" "design")   ; #false
(string=? "Design" "Design")   ; #true
