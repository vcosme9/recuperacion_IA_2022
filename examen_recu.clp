(deffacts data 
	(brazo cantidad 0)
	(bloque A encima 0 bloque B encima 0 bloque C encima 0 bloque D encima 0 bloque E encima 0)

	(mesa cantidad 0)
)


(defrule desapilar-bloque-A-de-B
	?f1 <- (bloque A encima 0 bloque B encima ?b bloque C encima ?c bloque D encima ?d bloque E encima ?e)
	?f2 <- (mesa cantidad ?m)
	?f3 <- (brazo cantidad ?b)
		(test (> ?m 0))
		(test (= ?p 0))
		(test (<> ?b 0))
	=>
	(assert (mesa cantidad (- ?m 1)))
	(assert (brazo cantidad (+ ?m 1)))
	(assert (bloque A encima 0 bloque B encima (- ?b 1) bloque C encima ?c bloque D encima ?d bloque E encima ?e))
)

(defrule desapilar-bloque-A-de-C
	?f1 <- (bloque A encima 0 bloque B encima ?b bloque C encima ?c bloque D encima ?d bloque E encima ?e)
	?f2 <- (mesa cantidad ?m)
	?f3 <- (brazo cantidad ?b)
		(test (> ?m 0))
		(test (= ?p 0))
		(test (<> ?c 0))
	=>
	(assert (mesa cantidad (- ?m 1)))
	(assert (brazo cantidad (+ ?m 1)))
	(assert (bloque A encima 0 bloque B encima ?b bloque C encima (- ?c 1) bloque D encima ?d bloque E encima ?e))
)

(defrule desapilar-bloque-A-de-D
	?f1 <- (bloque A encima 0 bloque B encima ?b bloque C encima ?c bloque D encima ?d bloque E encima ?e)
	?f2 <- (mesa cantidad ?m)
	?f3 <- (brazo cantidad ?b)
		(test (> ?m 0))
		(test (= ?p 0))
		(test (<> ?d 0))
	=>
	(assert (mesa cantidad (- ?m 1)))
	(assert (brazo cantidad (+ ?m 1)))
	(assert (bloque A encima 0 bloque B encima ?b bloque C encima ?c bloque D encima (- ?d 1) bloque E encima ?e))
)
