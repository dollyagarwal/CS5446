(define (problem BW-12-9546-43)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
    (:init
        (handempty)
        (on b1 b7)
        (on b2 b12)
        (on-table b3)
        (on b4 b3)
        (on b5 b9)
        (on b6 b8)
        (on-table b7)
        (on b8 b1)
        (on-table b9)
        (on b10 b2)
        (on-table b11)
        (on b12 b5)
        (clear b4)
        (clear b6)
        (clear b10)
        (clear b11)
    )
    (:goal
        (and
            (on-table b1)
            (on b2 b5)
            (on b3 b8)
            (on b4 b11)
            (on-table b5)
            (on b6 b1)
            (on b7 b12)
            (on-table b8)
            (on b9 b4)
            (on b10 b2)
            (on b11 b6)
            (on b12 b10)
        )
    )
)