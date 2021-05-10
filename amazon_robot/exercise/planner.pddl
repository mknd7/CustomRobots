;; Planning controller for Amazon Warehouse robots

(define (domain amazon-robot)
 (:requirements :strips :typing )
 (:types
  location
  robot
  pallet)

 (:predicates
   (adjacent ?l1 ?l2 - location)	; location ?l1 adjacent to location ?l2
   (atl ?r - robot ?l - location)	; robot ?r is located at location ?l
   (loaded ?r - robot ?p - pallet)	; robot ?r is loaded with pallet ?p
   (unloaded ?r - robot)   		; robot ?r is empty
   (in ?p - pallet ?l - location)	; pallet ?p is in location ?l
   (in-delivery-zone ?l - location)	; location ?l is in delivery zone
   (in-pickup-zone ?l - location)	; location ?l is in pickup zone
   )

;; moves a robot between two adjacent locations
 (:action move
     :parameters (?r - robot ?from ?to - location)
     :precondition (and (adjacent ?from ?to) (atl ?r ?from) )
     :effect (and (atl ?r ?to) (not (atl ?r ?from)))
     )

;; loads an empty robot with a pallet
 (:action load
     :parameters (?l - location ?p - pallet ?r - robot)
     :precondition (and (in-pickup-zone ?l) (atl ?r ?l) (in ?p ?l) (unloaded ?r))
     :effect (and (loaded ?r ?p) (not (in ?p ?l)) (not (unloaded ?r)))
     )

;; unloads a robot holding a pallet
 (:action unload
     :parameters (?l - location ?p - pallet ?r - robot)
     :precondition (and (in-delivery-zone ?l) (atl ?r ?l) (loaded ?r ?p) )
     :effect (and (unloaded ?r) (in ?p ?l) (not (loaded ?r ?p)))
     )

;; avoids collision between two robots
 (:action avoid-collision
     :parameters (?r1 ?r2 - robot ?l1 ?l2 ?l3 - location)
     :precondition (and (adjacent ?l1 ?l2) (atl ?r1 ?l1) (alt ?r2 ?l2))
     :effect (and (alt ?r1 ?l3) (alt ?r2 ?l2))
     ))
