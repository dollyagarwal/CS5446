

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on b1 b3)
(on-table b2)
(on b3 b5)
(on b4 b1)
(on b5 b2)
(on b6 b8)
(on-table b7)
(on b8 b7)
(clear b4)
(clear b6)
)
(:goal
(and
(on-table b1)
(on b2 b6)
(on-table b3)
(on b4 b2)
(on-table b5)
(on b6 b8)
(on b7 b5)
(on-table b8))
)
)


