.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/Bind91Account$3
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener
.enclosing method com/nd/android/u/cloud/activity/Bind91Account
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/Bind91Account;

.method <init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/Bind91Account$3/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDeleteUser(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z
.catch java/lang/InterruptedException from L0 to L1 using L2
iconst_1
istore 3
iload 3
istore 2
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 4
invokestatic com/nd/android/u/cloud/activity/login/NdLogin91Platform/getCookie()Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
invokestatic com/nd/android/u/cloud/com/WorkIdLoginCom/getInstance()Lcom/nd/android/u/cloud/com/WorkIdLoginCom;
aload 4
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
aload 5
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
aload 6
invokevirtual com/nd/android/u/cloud/com/WorkIdLoginCom/doAccountBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
sipush 200
if_icmpeq L4
iconst_0
istore 2
L3:
iload 2
ireturn
L4:
iload 3
istore 2
aload 1
ifnull L3
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$3/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/LoginManager/doAfterLogout(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$3/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
new android/content/Intent
dup
ldc "com.nd.android.teamlab.ACTION_CHANGE_IDENTIFY"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual com/product/android/business/ApplicationVariable/saveLoginType(Lcom/product/android/business/ApplicationVariable$LoginType;)V
iconst_1
ireturn
L2:
astore 1
goto L1
.limit locals 7
.limit stack 5
.end method
