(define (problem BW-12-9546-6)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
    (:init
        (handempty)
        (on b1 b2)
        (on-table b2)
        (on b3 b10)
        (on b4 b7)
        (on b5 b12)
        (on-table b6)
        (on-table b7)
        (on b8 b6)
        (on b9 b8)
        (on b10 b4)
        (on b11 b1)
        (on-table b12)
        (clear b3)
        (clear b5)
        (clear b9)
        (clear b11)
    )
    (:goal
        (and
            (on b1 b11)
            (on b2 b10)
            (on-table b3)
            (on-table b4)
            (on b5 b9)
            (on b6 b8)
            (on b7 b5)
            (on b8 b1)
            (on b9 b4)
            (on b10 b7)
            (on b11 b2)
            (on b12 b3)
        )
    )
)