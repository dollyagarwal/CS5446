

(define (problem BW-rand-2)
(:domain blocksworld)
(:objects b1 b2 - block)
(:init
(handempty)
(on-table b1)
(on-table b2)
(clear b1)
(clear b2)
)
(:goal
(and
(on-table b1)
(on-table b2))
)
)


