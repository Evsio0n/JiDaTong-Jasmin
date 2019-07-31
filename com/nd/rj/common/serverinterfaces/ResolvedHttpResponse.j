.bytecode 50.0
.class public synchronized com/nd/rj/common/serverinterfaces/ResolvedHttpResponse
.super java/lang/Object

.field private final 'mBusinessResponse' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;

.field private final 'mHttpSuccess' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mHttpSuccess Z
aload 0
aconst_null
putfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(ZLcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mHttpSuccess Z
aload 0
aload 2
putfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
return
.limit locals 3
.limit stack 2
.end method

.method public getBusinessResponseObj()Lcom/nd/rj/common/interfaces/VerifyObject;
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getBusinessResponseObj()Lcom/nd/rj/common/interfaces/VerifyObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isBusinessSuccess()Z
aload 0
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/isHttpSuccess()Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
ifnull L1
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mBusinessResponse Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getResolvedResult()Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
if_acmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isHttpSuccess()Z
aload 0
getfield com/nd/rj/common/serverinterfaces/ResolvedHttpResponse/mHttpSuccess Z
ireturn
.limit locals 1
.limit stack 1
.end method
