(define (problem capra-01)
(:domain capra)
(:objects
       
       fabrizio
       lupo
       capra
       left_bank
       right_bank
       barca
       cavolo
)
(:init
    (river_bank right_bank)
    (river_bank left_bank)
    (goat capra)
    (farmer fabrizio)
    (wolf lupo)
    (cabbage cavolo)
    (boat barca)
    (river right_bank left_bank)
    (river left_bank right_bank)
    
    (at capra left_bank)
    (at fabrizio left_bank)
    (at lupo left_bank)
    (at cavolo left_bank)
    (at barca left_bank)

    
    
    
)
(:goal (and

   (at lupo right_bank)
   (at capra right_bank)
   (at cavolo right_bank)
   (at fabrizio right_bank)
))

)