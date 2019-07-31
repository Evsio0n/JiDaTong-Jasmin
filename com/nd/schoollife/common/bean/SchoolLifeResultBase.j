.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/SchoolLifeResultBase
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'HTTP_CODE_CONFLICT' I = 409


.field public static final 'HTTP_CODE_GSON_PARSE_ERROR' I = -2


.field public static final 'HTTP_CODE_INTERNAL_SERVER_ERROR' I = 500


.field public static final 'HTTP_CODE_IPNUT_DATA_ERROR' I = 400


.field public static final 'HTTP_CODE_NET_REQUEST_ERROR' I = -3


.field public static final 'HTTP_CODE_NO_NET_ERROR' I = -100


.field public static final 'HTTP_CODE_SUCCESS' I = 200


.field private static final 'serialVersionUID' J = 3121808794799124805L


.field private 'businessCode' Ljava/lang/String;

.field private 'errorBean' Ljava/lang/Object;

.field private 'obj' Ljava/lang/Object;

.field private 'resultCode' I

.field private 'resultMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getBusinessCode()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/businessCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getErrorBean()Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/errorBean Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getObj()Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/obj Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResultCode()I
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getResultMsg()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isBusinessError()Z
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
sipush 400
if_icmpeq L0
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
sipush 409
if_icmpeq L0
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
sipush 500
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isSuccess()Z
aload 0
getfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setBusinessCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SchoolLifeResultBase/businessCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setErrorBean(Ljava/lang/Object;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SchoolLifeResultBase/errorBean Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method public setObj(Ljava/lang/Object;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SchoolLifeResultBase/obj Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method public setResultCode(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultCode I
return
.limit locals 2
.limit stack 2
.end method

.method public setResultMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SchoolLifeResultBase/resultMsg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
