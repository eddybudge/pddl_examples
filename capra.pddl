(define (domain capra)
(:predicates 
    (goat ?a)
    (farmer ?a)
    (wolf ?a)
    (cabbage ?a)
    (boat ?a)
    (at ?a ?b)
    (on ?a ?b)
    (river_bank ?a)
    (river ?a ?b)

)
 
 
(:action board_alone
   :parameters (?farmer ?wolf ?boat ?location ?goat ?cabbage)
   :precondition (and
                   (river_bank ?location)
                   (boat ?boat)
                   (farmer ?farmer)
                   (goat ?goat)
                   (cabbage ?cabbage)
                   (wolf ?wolf)
                 (or  (not (at ?goat ?location))
                      (not (at ?cabbage ?location))
                 )
              
                 (or  (not (at ?wolf ?location))
                      (not (at ?goat ?location))
                 )
                      (at ?farmer ?location)
                      (at ?boat ?location)
                  )
                   
   :effect (and  
                 (not (at ?farmer ?location))
                 (on ?farmer ?boat)
    
           )
)

 
  (:action board_cabbage
   :parameters (?farmer ?wolf ?boat ?location ?goat ?cabbage)
   :precondition (and
                   (boat ?boat)
                   (river_bank ?location)
                   (farmer ?farmer)
                   (wolf ?wolf) 
                   (goat ?goat)
                   (cabbage ?cabbage)
                 (or  (not (at ?wolf ?location))
                      (not (at ?goat ?location))
                 )
                   
                   (at ?boat ?location)
                   (at ?farmer ?location)
                   (at ?cabbage ?location)
                   )
   :effect (and  
                  (not (at ?farmer ?location))
                  (not (at ?cabbage ?location))
                 
                  (on ?cabbage ?boat)
                  (on ?farmer ?boat)
    
           )
  )

 
 
 
  (:action board_wolf
   :parameters (?farmer ?wolf ?boat ?location ?goat ?cabbage)
   :precondition (and
                   (river_bank ?location)
                   (farmer ?farmer)
                   (at ?farmer ?location)
                   (goat ?goat)
                   (cabbage ?cabbage)
                 (or  (not (at ?goat ?location))
                      (not (at ?cabbage ?location))
              )
                   (boat ?boat)
                   (at ?boat ?location)
                   (wolf ?wolf)
                   (at ?wolf ?location)
                  )
   :effect (and  
                  (not (at ?farmer ?location))
                  (not (at ?wolf ?location))
                 
                  (on ?wolf ?boat)
                  (on ?farmer ?boat)
    
           )
  )

 
 
  (:action board_goat
   :parameters (?farmer ?wolf ?boat ?location ?goat ?cabbage)
   :precondition (and
                   (river_bank ?location)
                   (farmer ?farmer)
                   (at ?farmer ?location)
                   (goat ?goat)
                   (at ?goat ?location)
                   (boat ?boat)
                   (at ?boat ?location)
                  )
   :effect (and  
                  (not (at ?farmer ?location))
                  (not (at ?goat ?location))
                 
                  (on ?goat ?boat)
                  (on ?farmer ?boat)
    
           )
  )

 (:action unboard
   :parameters (?farmer ?o ?boat ?location )
   :precondition (and
                   (farmer ?farmer)
                   (on ?farmer ?boat)
                   (on ?o ?boat)
                   (not (farmer ?o))
                   (boat ?boat)
                   (at ?boat ?location)
                   )
   :effect (and  
                   (at ?farmer ?location)
                   (at ?o ?location)
           
                   (not (on ?o ?boat))
                   (not (on ?farmer ?boat))
    
           )
  )
   
   (:action unboard_alone
   :parameters (?farmer ?wolf ?boat ?location ?goat ?cabbage)
   :precondition (and
                   (farmer ?farmer)
                   (goat ?goat)
                   (cabbage ?cabbage)
                   (wolf ?wolf)
                   (boat ?boat)
                   (on ?farmer ?boat)
                   (not (on ?goat ?boat))
                   (not (on ?wolf ?boat))
                   (not (on ?cabbage ?boat))
                   (at ?boat ?location)
                   )
   :effect (and  
                  (at ?farmer ?location)
                  (not (on ?farmer ?boat))
    
           )
  )
   
 (:action rawl
   :parameters ( ?boat ?loc1 ?loc2 ?farmer)
   :precondition (and
                   (on ?farmer ?boat)
                   (farmer ?farmer)
                   (boat ?boat)
                   (at ?boat ?loc1)
                   (river_bank ?loc1)
                   (river_bank ?loc2)
                   (river ?loc1 ?loc2)
                 )
   :effect (and  
                   (not (at ?boat ?loc1))
                   (at ?boat ?loc2)
           
           )
  )
 
)