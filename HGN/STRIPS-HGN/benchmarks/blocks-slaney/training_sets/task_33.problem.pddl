

(define (problem BW-rand-7)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on-table b1)
(on b2 b4)
(on-table b3)
(on b4 b6)
(on b5 b1)
(on b6 b3)
(on-table b7)
(clear b2)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b4)
(on-table b3)
(on-table b4)
(on b5 b1)
(on-table b6)
(on b7 b2))
)
)



