.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static TicketLoginFailedResponse inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin

.field public 'mErrorMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse/mErrorMsg Ljava/lang/String;
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
