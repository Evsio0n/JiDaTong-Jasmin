.bytecode 50.0
.class final synchronized com/nd/android/u/cloud/LoginManager$1
.super java/lang/Thread
.enclosing method com/nd/android/u/cloud/LoginManager/doLoginOut()V
.inner class static final inner com/nd/android/u/cloud/LoginManager$1

.method <init>()V
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public run()V
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
L0:
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doLogout()Z
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
return
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
return
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
return
.limit locals 2
.limit stack 1
.end method
