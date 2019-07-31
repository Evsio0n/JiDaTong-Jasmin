.bytecode 50.0
.class synchronized com/nd/rj/common/login/NdLogin91Platform$progressLogin91
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private progressLogin91 inner com/nd/rj/common/login/NdLogin91Platform$progressLogin91 outer com/nd/rj/common/login/NdLogin91Platform

.field 'start' J

.field final synthetic 'this$0' Lcom/nd/rj/common/login/NdLogin91Platform;

.method public <init>(Lcom/nd/rj/common/login/NdLogin91Platform;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method private checkCode(I)I
iload 1
ifne L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z
ifne L0
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "login fail,time used:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/start J
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/rj/common/R$string/nd_login_process_error I
ireturn
L0:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "login success,time used:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/start J
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
ireturn
.limit locals 2
.limit stack 6
.end method

.method private doFromInit()I
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
istore 1
iload 1
ifeq L0
iload 1
ireturn
L0:
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/doFromLogin()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method private doFromLogin()I
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$400(Lcom/nd/rj/common/login/NdLogin91Platform;)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getCookie()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
getstatic com/nd/rj/common/R$string/nd_login_cookie_400 I
istore 1
L0:
iload 1
ireturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$600(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$500(Lcom/nd/rj/common/login/NdLogin91Platform;)I
aload 3
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
aconst_null
aload 4
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByCookie(ILjava/lang/String;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 5
.limit stack 6
.end method

.method protected doFail(I)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getErrmsg()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/mContext Landroid/content/Context;
iload 1
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/mContext Landroid/content/Context;
aload 2
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/start J
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$200(Lcom/nd/rj/common/login/NdLogin91Platform;)Z
ifeq L3
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/mContext Landroid/content/Context;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/ticketLogin(Landroid/content/Context;)I
istore 2
iload 2
ifeq L4
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitializing()Z
ifeq L3
L4:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "login by ticket used:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/start J
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iload 2
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/checkCode(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitializing()Z
istore 3
L5:
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitializing()Z
ifeq L6
iconst_1
istore 3
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
ldc "debug"
ldc "mLogin91Assistant.isInitializing"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
goto L5
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L5
L6:
iload 3
ifeq L7
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifne L7
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getErrorCode()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L7:
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifeq L8
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$300(Lcom/nd/rj/common/login/NdLogin91Platform;)Z
ifeq L9
L8:
aload 0
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/doFromInit()I
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/checkCode(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L9:
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/doFromLogin()I
istore 2
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isNeedInit()Z
ifeq L10
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "login code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/doFromInit()I
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/checkCode(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L10:
aload 0
iload 2
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/checkCode(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/login/NdLogin91Platform$progressLogin91/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform$progressLogin91/this$0 Lcom/nd/rj/common/login/NdLogin91Platform;
invokestatic com/nd/rj/common/login/NdLogin91Platform/access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 1
.limit stack 1
.end method
