

(define (problem BW-rand-4)
(:domain blocksworld)
(:objects b1 b2 b3 b4 - block)
(:init
(handempty)
(on-table b1)
(on b2 b4)
(on b3 b2)
(on-table b4)
(clear b1)
(clear b3)
)
(:goal
(and
(on-table b1)
(on b2 b4)
(on-table b3)
(on b4 b3))
)
)


