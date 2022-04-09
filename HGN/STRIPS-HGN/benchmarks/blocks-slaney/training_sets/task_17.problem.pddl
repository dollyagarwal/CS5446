

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on b1 b3)
(on b2 b8)
(on b3 b6)
(on-table b4)
(on-table b5)
(on b6 b4)
(on b7 b1)
(on-table b8)
(clear b2)
(clear b5)
(clear b7)
)
(:goal
(and
(on-table b1)
(on b2 b4)
(on b3 b1)
(on b4 b7)
(on b5 b2)
(on b6 b5)
(on-table b7)
(on-table b8))
)
)



