.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdLogin$9$1
.super java/lang/Object
.implements com/nd/rj/common/login/view/NdUserPopup$IUserOper
.enclosing method com/nd/android/u/cloud/activity/login/NdLogin$9/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/cloud/activity/login/NdLogin$9
.inner class inner com/nd/android/u/cloud/activity/login/NdLogin$9$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/login/NdLogin$9;

.method <init>(Lcom/nd/android/u/cloud/activity/login/NdLogin$9;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSelectUser(Ljava/lang/String;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1302(Lcom/nd/android/u/cloud/activity/login/NdLogin;Lcom/product/android/business/bean/UserInfo;)Lcom/product/android/business/bean/UserInfo;
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1300(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Lcom/product/android/business/bean/UserInfo;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1300(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1400(Lcom/nd/android/u/cloud/activity/login/NdLogin;Lcom/product/android/business/bean/UserInfo;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
aconst_null
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1302(Lcom/nd/android/u/cloud/activity/login/NdLogin;Lcom/product/android/business/bean/UserInfo;)Lcom/product/android/business/bean/UserInfo;
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1500(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Landroid/widget/EditText;
aconst_null
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$9$1/this$1 Lcom/nd/android/u/cloud/activity/login/NdLogin$9;
getfield com/nd/android/u/cloud/activity/login/NdLogin$9/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1000(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Landroid/widget/EditText;
aconst_null
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method
