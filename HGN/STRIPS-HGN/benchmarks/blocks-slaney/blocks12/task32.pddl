(define (problem BW-12-9546-32)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b5)
        (on b3 b2)
        (on b4 b8)
        (on b5 b12)
        (on b6 b1)
        (on-table b7)
        (on b8 b10)
        (on b9 b6)
        (on b10 b3)
        (on b11 b4)
        (on b12 b9)
        (clear b7)
        (clear b11)
    )
    (:goal
        (and
            (on b1 b4)
            (on b2 b1)
            (on-table b3)
            (on b4 b6)
            (on b5 b3)
            (on b6 b7)
            (on b7 b9)
            (on b8 b12)
            (on-table b9)
            (on-table b10)
            (on-table b11)
            (on b12 b5)
        )
    )
)