.bytecode 50.0
.class public synchronized com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static final enum ResponseResolvedResult inner com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult outer com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse

.field private final 'mResolvedBusinessObj' Lcom/nd/rj/common/interfaces/VerifyObject;

.field private final 'mResolvedResult' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedResult Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 0
aconst_null
putfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedBusinessObj Lcom/nd/rj/common/interfaces/VerifyObject;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedResult Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 0
aload 2
putfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedBusinessObj Lcom/nd/rj/common/interfaces/VerifyObject;
return
.limit locals 3
.limit stack 2
.end method

.method public getBusinessResponseObj()Lcom/nd/rj/common/interfaces/VerifyObject;
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedBusinessObj Lcom/nd/rj/common/interfaces/VerifyObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResolvedResult()Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedResult Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedResult Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedBusinessObj Lcom/nd/rj/common/interfaces/VerifyObject;
ifnull L1
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/mResolvedBusinessObj Lcom/nd/rj/common/interfaces/VerifyObject;
invokeinterface com/nd/rj/common/interfaces/VerifyObject/isObjectValid()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method
