

(define (problem BW-rand-7)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on b1 b3)
(on-table b2)
(on b3 b2)
(on-table b4)
(on b5 b7)
(on b6 b1)
(on b7 b6)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b3)
(on-table b2)
(on b3 b4)
(on-table b4)
(on b5 b7)
(on b6 b5)
(on b7 b2))
)
)



