.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.inner class public static AbstractRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem

.field public 'mAmount' J

.field public 'mItemId' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mItemId J
lconst_0
lcmp
iflt L0
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mAmount J
lconst_0
lcmp
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method
