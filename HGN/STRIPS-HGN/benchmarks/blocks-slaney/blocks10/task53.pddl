(define (problem BW-10-7268-53)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b10)
        (on b3 b9)
        (on b4 b1)
        (on b5 b7)
        (on-table b6)
        (on b7 b4)
        (on b8 b3)
        (on-table b9)
        (on b10 b5)
        (clear b2)
        (clear b6)
        (clear b8)
    )
    (:goal
        (and
            (on-table b1)
            (on-table b2)
            (on-table b3)
            (on-table b4)
            (on b5 b9)
            (on b6 b2)
            (on b7 b6)
            (on b8 b10)
            (on b9 b4)
            (on b10 b1)
        )
    )
)