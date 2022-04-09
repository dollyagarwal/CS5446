

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on-table b1)
(on-table b2)
(on b3 b1)
(on b4 b5)
(on b5 b2)
(on-table b6)
(on b7 b8)
(on b8 b3)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b6)
(on-table b2)
(on b3 b2)
(on b4 b3)
(on b5 b8)
(on b6 b7)
(on-table b7)
(on-table b8))
)
)



