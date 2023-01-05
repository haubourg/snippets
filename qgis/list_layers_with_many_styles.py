# script pour lister les styles de toutes les couches 

for vl in iface.mapCanvas().layers(): 
    
    vl.name()
    sm = vl.styleManager()
    if len(sm.styles()) > 1 :
        print( vl.name() )