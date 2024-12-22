(define (problem rob-01)
(:domain robot)
(:objects

        s1
        s2
        s3
        s4
        rob1
        
)
(:init
    (robot rob1)
    (location s1)
    (location s2)
    (location s3)
    (location s4)
	(conn s1 s2)
	(conn s2 s3)
	(conn s3 s4)
	(conn s2 s1)
	(conn s3 s2)
	(conn s4 s3)
	(at rob1 s4)
)
(:goal (and
         
         (at rob1 s1)
))

)