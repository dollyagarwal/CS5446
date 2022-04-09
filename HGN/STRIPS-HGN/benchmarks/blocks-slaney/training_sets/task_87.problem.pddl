

(define (problem BW-rand-7)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on b1 b3)
(on b2 b5)
(on b3 b4)
(on-table b4)
(on b5 b7)
(on b6 b2)
(on b7 b1)
(clear b6)
)
(:goal
(and
(on b1 b3)
(on b2 b7)
(on b3 b5)
(on-table b4)
(on b5 b6)
(on-table b6)
(on-table b7))
)
)



