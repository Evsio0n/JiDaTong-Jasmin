.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static RegisterSuccessResponse inner com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse outer com/nd/rj/common/login/jobnumber/ReqRegister

.field public 'mCode' I

.field public 'mMsg' Ljava/lang/String;

.field public 'mSid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/mSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
