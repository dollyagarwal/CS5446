

(define (problem BW-rand-8)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
(:init
(handempty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on b4 b1)
(on b5 b4)
(on b6 b5)
(on b7 b3)
(on b8 b6)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b3)
(on-table b2)
(on b3 b4)
(on b4 b5)
(on-table b5)
(on b6 b2)
(on b7 b1)
(on b8 b7))
)
)



