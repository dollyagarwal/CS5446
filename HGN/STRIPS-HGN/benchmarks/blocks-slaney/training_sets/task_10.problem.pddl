

(define (problem BW-rand-6)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 - block)
(:init
(handempty)
(on-table b1)
(on b2 b3)
(on b3 b6)
(on b4 b2)
(on-table b5)
(on-table b6)
(clear b1)
(clear b4)
(clear b5)
)
(:goal
(and
(on-table b1)
(on b2 b1)
(on b3 b5)
(on b4 b6)
(on-table b5)
(on b6 b2))
)
)


