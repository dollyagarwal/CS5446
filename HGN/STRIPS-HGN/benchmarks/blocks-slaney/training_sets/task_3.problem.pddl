

(define (problem BW-rand-6)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 - block)
(:init
(handempty)
(on b1 b3)
(on b2 b4)
(on b3 b6)
(on b4 b1)
(on-table b5)
(on b6 b5)
(clear b2)
)
(:goal
(and
(on b1 b5)
(on b2 b4)
(on b3 b1)
(on-table b4)
(on b5 b2)
(on b6 b3))
)
)



