```
> set instance r1 robot
> set instance r2 robot

> set instance p1 pallet
> set instance p2 pallet
> set instance p3 pallet
> set instance p4 pallet
> set instance p5 pallet
> set instance p6 pallet

> set instance pl1 location
> set instance pl2 location
> set instance pl3 location
> set instance pl4 location
> set instance pl5 location
> set instance pl6 location

> set instance dl1 location
> set instance dl2 location
> set instance dl3 location

> set predicate (adjacent dl1 dl2)
> set predicate (atl r1 dl1)
> set predicate (loaded r1 p1)
> set predicate (unloaded r1)
> set predicate (in p1 pl1)
> set predicate (in-delivery-zone dl1)
> set predicate (in-pickup-zone pl1)
