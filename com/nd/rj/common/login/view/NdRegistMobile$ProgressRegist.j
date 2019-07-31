.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressRegist inner com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist outer com/nd/rj/common/login/view/NdRegistMobile

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdRegistMobile;

.field private 'user' Lcom/product/android/business/bean/UserInfo;

.method public <init>(Lcom/nd/rj/common/login/view/NdRegistMobile;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
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
putfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$100(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$200(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$300(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
ldc "LOGIN_TYPE"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
iload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$400(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/mErrorMsg Ljava/lang/StringBuilder;
invokevirtual com/nd/rj/common/login/LoginPro/regPhone(ILcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 3
iload 3
istore 2
iload 3
ifne L0
iload 3
istore 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z
ifne L0
getstatic com/nd/rj/common/R$string/nd_login_process_error I
istore 2
L0:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
iconst_0
istore 1
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
ifnull L0
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
ldc "LOGIN_TYPE"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
istore 1
L0:
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
ifnonnull L2
L3:
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/finish()V
return
L2:
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$100(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$200(Lcom/nd/rj/common/login/view/NdRegistMobile;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
ldc "USER"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
ldc com/nd/rj/common/login/view/NdLogin
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$000(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
aload 2
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/startActivity(Landroid/content/Intent;)V
goto L3
L1:
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
getstatic com/nd/rj/common/R$string/nd_regist_success I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/finish()V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$ProgressRegist/user Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 3
.limit stack 4
.end method
