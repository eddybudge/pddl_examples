(define (domain domain0)
(:predicates 

    (acqua ?a)
    (caffe ?c)
    (snack ?s)
    
    (costo_snack ?cos_snack)
    (costo_acqua ?cos_acqua)
    
    (macchinetta ?m)
    (robot ?r)
    
    (moneta1 ?mon1)
    (moneta2 ?mon2)
    
    (quantita ?q)
    (quantita_meno_uno ?q0 ?q1)
    (cash_a_disposizione ?cash)
    (num_monete_da1_da2_a_disposizione ?n1 ?n2)
    
    ;(bancomat ?b)
    
    (snack_disponibili ?bool ?s_dis)
    (bottiglie_disponibili ?bool ?b_dis)
    
    (in_mano ?oggetto)
    (zero ?zero)
    (si ?bool1)
    (no ?bool2)
    (uguale ?n11 ?n22)
    (quantita_meno_due ?meno ?due)
)
 
 
(:action compra_snack
   :parameters (?robot ?macchinetta ?num_snack_disponibili ?snack ?cos_snack ?cos_snack_meno1 ?cos_snack_meno2 ?monete_da1_a_disposizione ?cash_a_disposizione ?monete_da2_a_disposizione ?bool ?zero ?meno ?due)
   :precondition (and
                   
                   (quantita ?meno)
                   (quantita ?due)
                   (zero ?zero)
                   (quantita ?zero)
                   (snack ?snack)
                   (robot ?robot)
                   (macchinetta ?macchinetta)
                   (quantita ?cos_snack)
                   (costo_snack ?cos_snack)
                   (quantita ?snack_disponibili)
                   (snack_disponibili ?bool ?num_snack_disponibili)
                   (si ?bool)
                   (quantita ?bool)

                   (quantita_meno_uno ?zero ?cos_snack);snack costa o 1 euro
                   
                   ;(not (quantita_meno_uno ?cash_a_disposizione ?cos_snack));
                   
                   (num_monete_da1_da2_a_disposizione ?monete_da1_a_disposizione ?monete_da2_a_disposizione)
                   (or(not(uguale ?zero ?monete_da1_a_disposizione))
                   (not(uguale ?zero ?monete_da2_a_disposizione))
                   )
                   
   :effect (and  
                 (or(
                   (and (not(uguale ?zero ?monete_da1_a_disposizione))
                        )
                   
                   (not(uguale ?zero ?monete_da2_a_disposizione))
                   )
    
           )
)
 
)