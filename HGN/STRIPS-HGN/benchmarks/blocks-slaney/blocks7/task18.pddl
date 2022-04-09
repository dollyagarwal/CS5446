(define (problem BW-7-6874-18)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 - block)
    (:init
        (handempty)
        (on b1 b4)
        (on-table b2)
        (on b3 b1)
        (on b4 b2)
        (on-table b5)
        (on b6 b7)
        (on b7 b3)
        (clear b5)
        (clear b6)
    )
    (:goal
        (and
            (on-table b1)
            (on b2 b3)
            (on-table b3)
            (on b4 b5)
            (on b5 b2)
            (on b6 b7)
            (on-table b7)
        )
    )
)