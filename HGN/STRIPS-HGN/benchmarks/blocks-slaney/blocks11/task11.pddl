(define (problem BW-11-6452-11)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b1)
        (on b3 b8)
        (on-table b4)
        (on b5 b9)
        (on b6 b11)
        (on-table b7)
        (on b8 b6)
        (on-table b9)
        (on b10 b4)
        (on b11 b10)
        (clear b2)
        (clear b3)
        (clear b5)
        (clear b7)
    )
    (:goal
        (and
            (on-table b1)
            (on-table b2)
            (on b3 b9)
            (on b4 b6)
            (on b5 b4)
            (on-table b6)
            (on b7 b1)
            (on b8 b5)
            (on b9 b10)
            (on-table b10)
            (on b11 b8)
        )
    )
)