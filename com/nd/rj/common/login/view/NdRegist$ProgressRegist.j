.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdRegist$ProgressRegist
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressRegist inner com/nd/rj/common/login/view/NdRegist$ProgressRegist outer com/nd/rj/common/login/view/NdRegist

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdRegist;

.field private 'user' Lcom/product/android/business/bean/UserInfo;

.method public <init>(Lcom/nd/rj/common/login/view/NdRegist;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
putfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/view/NdRegist/access$000(Lcom/nd/rj/common/login/view/NdRegist;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/view/NdRegist/access$100(Lcom/nd/rj/common/login/view/NdRegist;)Ljava/lang/String;
ldc "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"
ldc "10001"
invokestatic com/nd/rj/common/login/NdLoginComFun/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/view/NdRegist/access$100(Lcom/nd/rj/common/login/view/NdRegist;)Ljava/lang/String;
ldc "GB2312"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMixedMd5(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/view/NdRegist/access$200(Lcom/nd/rj/common/login/view/NdRegist;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/view/NdRegist/access$300(Lcom/nd/rj/common/login/view/NdRegist;)Landroid/os/Bundle;
ldc "LOGIN_TYPE"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
iload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual com/nd/rj/common/login/LoginPro/userRegist(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
istore 3
iload 3
istore 2
iload 3
ifne L0
iload 3
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z
ifne L0
getstatic com/nd/rj/common/R$string/nd_login_process_error I
istore 2
L0:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/login/view/NdRegist$ProgressRegist/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
getstatic com/nd/rj/common/R$string/nd_regist_success I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegist;
invokevirtual com/nd/rj/common/login/view/NdRegist/finish()V
aload 0
getfield com/nd/rj/common/login/view/NdRegist$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 1
.limit stack 2
.end method
