

(define (problem BW-rand-7)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on b1 b4)
(on-table b2)
(on b3 b1)
(on b4 b7)
(on-table b5)
(on b6 b2)
(on-table b7)
(clear b3)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b5)
(on b2 b4)
(on b3 b6)
(on-table b4)
(on b5 b2)
(on-table b6)
(on b7 b3))
)
)



