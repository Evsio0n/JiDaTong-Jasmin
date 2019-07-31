.bytecode 50.0
.class synchronized com/nd/rj/common/login/NdLoginplatform$ProgressLogin
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressLogin inner com/nd/rj/common/login/NdLoginplatform$ProgressLogin outer com/nd/rj/common/login/NdLoginplatform

.field private 'mCanSwitch' Z

.field private 'mCtx' Landroid/content/Context;

.field private 'mUser' Lcom/product/android/business/bean/UserInfo;

.field final synthetic 'this$0' Lcom/nd/rj/common/login/NdLoginplatform;

.method public <init>(Lcom/nd/rj/common/login/NdLoginplatform;Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;IZ)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/this$0 Lcom/nd/rj/common/login/NdLoginplatform;
aload 0
aload 2
iload 4
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mCtx Landroid/content/Context;
aload 0
aload 3
putfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
iload 5
putfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mCanSwitch Z
return
.limit locals 6
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
iload 1
invokespecial com/common/android/utils/task/progressTask/ProgressTask/doFail(I)V
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/this$0 Lcom/nd/rj/common/login/NdLoginplatform;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mCanSwitch Z
iconst_0
invokestatic com/nd/rj/common/login/NdLoginplatform/access$000(Lcom/nd/rj/common/login/NdLoginplatform;Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;ZZ)V
return
.limit locals 2
.limit stack 5
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mCtx Landroid/content/Context;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/this$0 Lcom/nd/rj/common/login/NdLoginplatform;
getfield com/nd/rj/common/login/NdLoginplatform/mType I
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
istore 3
iload 3
istore 2
iload 3
ifne L0
iload 3
istore 2
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mUser Lcom/product/android/business/bean/UserInfo;
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
invokevirtual com/nd/rj/common/login/NdLoginplatform$ProgressLogin/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/rj/common/login/NdLoginplatform$ProgressLogin/mUser Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 1
.limit stack 1
.end method
