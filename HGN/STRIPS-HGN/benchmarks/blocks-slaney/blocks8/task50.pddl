(define (problem BW-8-3326-50)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
    (:init
        (handempty)
        (on b1 b6)
        (on b2 b8)
        (on b3 b4)
        (on-table b4)
        (on b5 b1)
        (on b6 b2)
        (on b7 b3)
        (on-table b8)
        (clear b5)
        (clear b7)
    )
    (:goal
        (and
            (on b1 b3)
            (on b2 b4)
            (on-table b3)
            (on-table b4)
            (on b5 b8)
            (on b6 b5)
            (on b7 b6)
            (on-table b8)
        )
    )
)