.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressRegist inner com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist outer com/nd/android/u/cloud/activity/login/NdRegistMobile

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;

.field private 'user' Lcom/product/android/business/bean/UserInfo;

.method public <init>(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
iload 1
invokespecial com/common/android/utils/task/progressTask/ProgressTask/doFail(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
putfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$200(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$100(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$300(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$400(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual com/nd/rj/common/login/LoginPro/regPhone(ILcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/StringBuilder;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
ldc_w 2131494441
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin91Platform/getInstance(Landroid/content/Context;)Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$000()Landroid/os/Handler;
invokevirtual com/nd/android/u/cloud/activity/login/NdLogin91Platform/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin91Platform/getInstance(Landroid/content/Context;)Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$100(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Ljava/lang/String;
aconst_null
iconst_1
invokevirtual com/nd/android/u/cloud/activity/login/NdLogin91Platform/doLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Z)I
pop
return
L0:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
ldc_w 989802
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$100(Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/cloud/activity/login/NdRegistMobile/access$000()Landroid/os/Handler;
aload 1
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/android/u/cloud/activity/login/NdRegistMobile;
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile/finish()V
return
.limit locals 2
.limit stack 6
.end method
