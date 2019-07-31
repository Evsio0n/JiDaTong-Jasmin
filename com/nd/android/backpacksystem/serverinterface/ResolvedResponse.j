.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/ResolvedResponse
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject

.field private final 'mResolvedObj' Ljava/lang/Object;

.field private final 'mSuccess' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mSuccess Z
aload 0
aconst_null
putfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mResolvedObj Ljava/lang/Object;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(ZLjava/lang/Object;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mSuccess Z
aload 0
aload 2
putfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mResolvedObj Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method

.method public getResolvedObj()Ljava/lang/Object;
aload 0
getfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mResolvedObj Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mResolvedObj Ljava/lang/Object;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSuccess()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/ResolvedResponse/mSuccess Z
ireturn
.limit locals 1
.limit stack 1
.end method
