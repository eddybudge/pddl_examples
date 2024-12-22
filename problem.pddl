(define (problem problem0)
(:domain domain)
(:objects
       
       n0
       n1
       n2
       n3
       n4
       n5
       n6
       n7
       
       moneta1euro
       moneta2euro
       
       levissima
       pavesini
       
       cameriere
       distributore
       ;atm
)
(:init
    
    
    ;(cash_a_disposizione n4)
    (robot cameriere)
    (macchinetta distributore)
    ;(bancomat atm)
    
    (acqua levissima)
    (snack pavesini)
    
    (moneta1 moneta1euro)
    (moneta2 moneta2euro)
    
    (quantita n0)
    (quantita n1)
    (quantita n2)
    (quantita n3)
    (quantita n4)
    (quantita n5)
    (quantita n6)
    (quantita n7)
    
    (quantita_meno_uno n0 n1)
    (quantita_meno_uno n1 n2)
    (quantita_meno_uno n2 n3)
    (quantita_meno_uno n3 n4)
    (quantita_meno_uno n4 n5)
    (quantita_meno_uno n5 n6)
    (quantita_meno_uno n6 n7)
    
    (quantita_meno_due n0 n2)
    (quantita_meno_due n1 n3)
    (quantita_meno_due n2 n4)
    (quantita_meno_due n3 n5)
    (quantita_meno_due n4 n6)
    (quantita_meno_due n5 n7)
    
    
    (uguale n0 n0)
    (uguale n1 n1)
    (uguale n2 n2)
    (uguale n3 n3)
    (uguale n4 n4)
    (uguale n5 n5)
    (uguale n6 n6)
    (uguale n7 n7)
    
    (zero n0)
    (no n0)
    (si n1)
    
    (costo_snack n1)
    (costo_acqua n1)
    (snack_disponibili n1 5)
    (num_monete_da1_da2_a_disposizione n2 n1);2 da1 e 1 da 2 = tot 4 euro
    
    
)
(:goal (and

   
   
))

)