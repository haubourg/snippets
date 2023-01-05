for vl in iface.mapCanvas().layers():
    print(vl.name())
    print([a.name() for a in vl.actions().actions()])
#
#for vl in iface.mapCanvas().layers():
#    actions = vl.actions()
#    actions.clearActions()