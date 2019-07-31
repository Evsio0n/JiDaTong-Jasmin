.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.inner class public static GiveRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/Give

.field public 'mAmount' I

.field public 'mItemId' J

.field public 'mMessage' Ljava/lang/String;

.field public 'mToUid' J

.field public 'mVoiceData' Ljava/lang/String;

.field public 'mVoiceExt' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mToUid J
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mItemId J
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mAmount I
ifgt L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceData Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceExt Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method
