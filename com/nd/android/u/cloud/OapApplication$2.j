.bytecode 50.0
.class synchronized com/nd/android/u/cloud/OapApplication$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/OapApplication/init()V
.inner class inner com/nd/android/u/cloud/OapApplication$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/OapApplication;

.method <init>(Lcom/nd/android/u/cloud/OapApplication;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/OapApplication$2/this$0 Lcom/nd/android/u/cloud/OapApplication;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/setExpiredSid()V
invokestatic com/nd/android/u/cloud/LoginManager/loginauthentication()I
ifne L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
L0:
return
.limit locals 1
.limit stack 1
.end method
