.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressSendCode inner com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode outer com/nd/android/u/cloud/activity/login/NdRegistMobile

.field 'phoneNum' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;

.method public <init>(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$200(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/phoneNum Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
iload 1
sipush 206
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$1000(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/os/Bundle;
ldc "REGIST_MOBILE"
bipush 101
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/phoneNum Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$1000(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/os/Bundle;
ldc "USER"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
ldc com/nd/android/u/cloud/activity/login/NdLogin
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$1000(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
aload 2
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile/finish()V
L0:
aload 0
iload 1
invokespecial com/common/android/utils/task/progressTask/ProgressTask/doFail(I)V
return
.limit locals 3
.limit stack 4
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/phoneNum Ljava/lang/String;
ldc "4"
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual com/nd/rj/common/login/LoginPro/sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile/isResendCode Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$700(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$200(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/phoneNum Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$800(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$900(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressSendCode/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$700(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)V
return
.limit locals 1
.limit stack 2
.end method
