.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.inner class public static GiveResponse inner com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse outer com/nd/android/backpacksystem/serverinterface/impl/Give

.field public 'mItemNum' I

.field public 'mVoiceUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/mItemNum I
return
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/mItemNum I
iconst_m1
if_icmple L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
