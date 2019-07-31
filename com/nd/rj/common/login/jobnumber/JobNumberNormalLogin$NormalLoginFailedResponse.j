.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static NormalLoginFailedResponse inner com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse outer com/nd/rj/common/login/jobnumber/JobNumberNormalLogin

.field public 'mErrorMsg' Ljava/lang/String;

.field public 'mIsNeedCaptcha' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/mIsNeedCaptcha Z
return
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/mErrorMsg Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
