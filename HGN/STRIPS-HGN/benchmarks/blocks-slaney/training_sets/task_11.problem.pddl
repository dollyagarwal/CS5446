

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b2)
(on b6 b8)
(on b7 b5)
(on b8 b1)
(clear b3)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on b3 b4)
(on b4 b5)
(on-table b5)
(on-table b6)
(on b7 b2)
(on-table b8))
)
)



