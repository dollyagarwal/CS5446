(define (problem BW-13-2654-33)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b11)
        (on b3 b10)
        (on-table b4)
        (on b5 b12)
        (on b6 b8)
        (on-table b7)
        (on b8 b9)
        (on-table b9)
        (on b10 b2)
        (on b11 b1)
        (on b12 b4)
        (on b13 b7)
        (clear b3)
        (clear b5)
        (clear b6)
        (clear b13)
    )
    (:goal
        (and
            (on-table b1)
            (on b2 b1)
            (on b3 b6)
            (on b4 b12)
            (on b5 b9)
            (on b6 b4)
            (on-table b7)
            (on b8 b13)
            (on b9 b8)
            (on b10 b5)
            (on b11 b3)
            (on b12 b2)
            (on b13 b11)
        )
    )
)