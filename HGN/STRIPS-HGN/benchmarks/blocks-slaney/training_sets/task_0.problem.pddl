

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on b1 b4)
(on-table b2)
(on b3 b1)
(on-table b4)
(on-table b5)
(on b6 b5)
(on b7 b6)
(on b8 b3)
(clear b2)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b6)
(on-table b2)
(on b3 b5)
(on b4 b8)
(on b5 b2)
(on b6 b4)
(on b7 b3)
(on-table b8))
)
)



