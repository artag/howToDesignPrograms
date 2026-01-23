;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex005) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Упражнение 5.
; Воспользуйтесь библиотекой 2htdp/image и создайте
; изображение простой лодки или дерева.
; Предусмотрите простую возможность изменения размеров изображения.
; Рисую елку

(require 2htdp/image)

(define width 200)
(define height 200)
(define center_x (/ width 2))
(define center_y (* height 0.7))
(define tree_size (/ width 3))

(define (background width height)
  (empty-scene width height))

(define (tree_bottom width height)
  (place-image (rectangle (* width 0.1) (/ height 2) "solid" "brown")
               center_x height
               (background width height)))

(define (tree_1 width height)
  (place-image (triangle tree_size "solid" "green")
               center_x center_y
               (tree_bottom width height)))

(define (tree_2 width height)
  (place-image (triangle tree_size "solid" "green")
                center_x (- center_y (* tree_size 0.5))
                (tree_1 width height)))

(define (tree width height)
  (place-image (triangle tree_size "solid" "green")
                center_x (- center_y tree_size)
                (tree_2 width height)))


; Запуск
(tree width height)