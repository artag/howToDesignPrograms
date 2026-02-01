;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex030) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 30.
; Определите константы в программе оптимизации цен на билеты в кинотеатре
; преобразовав изменение посещае­мости в зависимости от изменения цены
; (15 человек на каждые 10 центов) в константу.

(require racket/base)       ; real->decimal-string
(require 2htdp/batch-io)    ; write-file

; Средняя посещаемость, человек
(define DEFAULT-ATTENDES 120)
; Средняя цена билета, долларов
(define DEFAULT-TICKET-PRICE 5)

; Изменение средней посещаемости при изменении цены, человек
(define CHANGE-ATTENDES 15)
; Изменение средней цены билета, долларов
(define CHANGE-TICKET-PRICE 0.1)
; Изменение средней посещаемости
(define CHANGE-ATTENDES-PER-TEN-CENTS (/ CHANGE-ATTENDES CHANGE-TICKET-PRICE))

; Фиксированная величина застрат на сеанс
(define COST-FIX 180)
; Переменная величина затрат на сеанс, долларов на человека
(define COST-PER-MAN 0.04)
; Оптимизация. Переменная величина затрат на сеанс, долларов на человека.
(define COST-PER-MAN-OPTIMIZED 1.5)

; 1/4. Средняя посещаемость, в зависимости от цены билета, человек.
(define (attendes ticket-price)
  (- DEFAULT-ATTENDES
     (* (- ticket-price DEFAULT-TICKET-PRICE)
        CHANGE-ATTENDES-PER-TEN-CENTS)))

; 2/4. Выручка, долларов.
(define (revenue ticket-price)
  (* ticket-price (attendes ticket-price)))

; 3/4. Суммарные затраты на сеанс, долларов.
(define (cost ticket-price)
  (+ COST-FIX
     (* COST-PER-MAN
        (attendes ticket-price))))

; 3/4. Суммарные затраты на сеанс, долларов. Версия 2.
(define (cost-v2 ticket-price)
  (* COST-PER-MAN-OPTIMIZED
     (attendes ticket-price)))

; 4/4. Прибыль. Версия 1.
; Разность между выручкой и затратами при заданной цене билета.
(define (profit-v1 ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

; 4/4. Прибыль. Версия 2. Оптимизация расходов.
; Разность между выручкой и затратами при заданной цене билета.
(define (profit-v2 ticket-price)
  (- (revenue ticket-price)
     (cost-v2 ticket-price)))


; Прибыль. Нечитаемая версия.
(define (profit-not-readed price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 180
        (* 0.04
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

; Для тестирования
(define (display-profit ticket-price)
  (write-file 'stdout
              (string-append "price: "
                             (real->decimal-string ticket-price)
                             "\n"
                             "profit_not_readed: "
                             (real->decimal-string (profit-not-readed ticket-price))
                             "\n"
                             "profit_v1: "
                             (real->decimal-string (profit-v1 ticket-price))
                             "\n"
                             "profit_v2: "
                             (real->decimal-string (profit-v2 ticket-price))
                             "\n\n")))

; === Тестирование

; Потенциальная прибыль для цен на билеты:
; 1, 2, 3, 4 и 5 долларов.

(display-profit 1.0)
(display-profit 2.0)
(display-profit 3.0)
(display-profit 4.0)
(display-profit 5.0)

(for ([price (in-range 2.90 2.94 0.01)])
  (display-profit price))

; Максимальная прибыль для первой версии 1064.16 при цене 2.92

(for ([price (in-range 3.64 3.68 0.01)])
  (display-profit price))

; Максимальная прибыль для первой версии 693.38 при цене 3.65
