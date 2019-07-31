.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.inner class public static UseFlowsersRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers

.field public 'mAbstractParams' Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;

.field public 'mToUid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/mAbstractParams Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/mAbstractParams Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/isObjectValid()Z
ifne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/mToUid J
lconst_0
lcmp
ifle L0
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method
