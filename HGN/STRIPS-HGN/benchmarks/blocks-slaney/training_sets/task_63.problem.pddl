

(define (problem BW-rand-7)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on b1 b4)
(on-table b2)
(on b3 b2)
(on b4 b6)
(on-table b5)
(on b6 b5)
(on b7 b3)
(clear b1)
(clear b7)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b2)
(on-table b7))
)
)



