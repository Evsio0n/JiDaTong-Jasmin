.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.inner class public static UseGiftsResponse inner com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse outer com/nd/android/backpacksystem/serverinterface/impl/UseGifts

.field public 'mAmount' I

.field public 'mItemType' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mItemType J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mAmount I
return
.limit locals 1
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mItemType J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mAmount I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method
