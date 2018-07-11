==================================================================
                        General Data File
==================================================================
Units:
Number of elements and nodes:
elements pointnumber timedelta
*nelem *nnodes

.................................................................

Coordinates:
Node        	X      		Y       		Z
*set elems(all)
*loop nodes
*NodesNum *NodesCoord(1) *NodesCoord(2) *NodesCoord(3)
*end nodes

.................................................................

Connectivities:
Element    Node(1)   Node(2)   Node(3)  Node(4)    Material
*loop elems
*ElemsNum *ElemsConec *ElemsMat 
*end elems

.................................................................

Materials:
*nmats
Material 
*loop materials
*MatNum *MatProp(Superficial_density,real)
*end materials

.................................................................

*Set Cond Velocidad-Entrada *nodes
Velocidad de Entrada:
*CondNumEntities(int)
Node   Mass
*loop nodes *OnlyInCond
*NodesNum
*end nodes
