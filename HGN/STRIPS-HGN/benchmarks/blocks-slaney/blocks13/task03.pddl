(define (problem BW-13-2654-3)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b8)
        (on b3 b13)
        (on b4 b12)
        (on b5 b10)
        (on b6 b9)
        (on b7 b3)
        (on b8 b4)
        (on b9 b1)
        (on-table b10)
        (on b11 b2)
        (on-table b12)
        (on b13 b11)
        (clear b5)
        (clear b6)
        (clear b7)
    )
    (:goal
        (and
            (on b1 b6)
            (on b2 b13)
            (on b3 b4)
            (on-table b4)
            (on b5 b11)
            (on b6 b7)
            (on-table b7)
            (on-table b8)
            (on b9 b1)
            (on b10 b8)
            (on b11 b10)
            (on b12 b9)
            (on b13 b3)
        )
    )
)