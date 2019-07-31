.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static TicketLoginSuccessResponse inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin

.field public 'mBind99Account' Ljava/lang/String;

.field public 'mIdentity' I

.field public 'mPasswordModifyTime' Ljava/lang/String;

.field public 'mSid' Ljava/lang/String;

.field public 'mUid' J

.field public 'mUnitId' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mIdentity I
return
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mIdentity I
iconst_m1
if_icmpne L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method
