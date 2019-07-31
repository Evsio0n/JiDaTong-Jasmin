.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static SendMessageCodeResponse inner com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse outer com/nd/android/u/cloud/activity/welcome/com/SendMessageCode

.field public static final 'FAIL' I = 1


.field public static final 'SUCCESS' I = 0


.field public 'mIsSuccess' I

.field public 'mMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mIsSuccess I
return
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mMsg Ljava/lang/String;
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
