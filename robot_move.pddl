(define (domain robot)
(:predicates 
   (conn ?loc1 ?loc2)
   (at ?rob ?loc)
   (robot ?rob)
   (location ?loc)
   (open ?loc1 ?loc2)
)
 
 
(:action open_door
   :parameters (?rob ?loc1 ?loc2)
   :precondition (and
                   (location ?loc1)
                   (location ?loc2)
                   (conn ?loc1 ?loc2)
                   (robot ?rob)
                   (at ?rob ?loc1)
                                  
                 )
   :effect (and  (open ?loc1 ?loc2)
                 (open ?loc2 ?loc1)
           )
)

 

 

(:action move
   :parameters (?rob ?from ?to  )
   :precondition (and 
                   (location ?from)
                   (location ?to)
                   (open ?from ?to)
                   (robot ?rob)
                   (at ?rob ?from)
                   (conn ?from ?to)
                 )
   :effect (and  (at ?rob ?to)
                 (not (at ?rob ?from))
           )
)
 
 
)