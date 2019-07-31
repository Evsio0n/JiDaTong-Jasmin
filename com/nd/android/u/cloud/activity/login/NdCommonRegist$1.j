.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdCommonRegist$1
.super java/lang/Object
.implements android/widget/TabHost$OnTabChangeListener
.enclosing method com/nd/android/u/cloud/activity/login/NdCommonRegist/initTabs()V
.inner class inner com/nd/android/u/cloud/activity/login/NdCommonRegist$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdCommonRegist;

.method <init>(Lcom/nd/android/u/cloud/activity/login/NdCommonRegist;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdCommonRegist$1/this$0 Lcom/nd/android/u/cloud/activity/login/NdCommonRegist;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTabChanged(Ljava/lang/String;)V
aload 1
ldc "1"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist$1/this$0 Lcom/nd/android/u/cloud/activity/login/NdCommonRegist;
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/getCurrentActivity()Landroid/app/Activity;
astore 1
aload 1
instanceof com/nd/android/u/cloud/activity/login/NdRegistMobile
ifeq L0
aload 1
checkcast com/nd/android/u/cloud/activity/login/NdRegistMobile
invokevirtual com/nd/android/u/cloud/activity/login/NdRegistMobile/recoverUI()V
L0:
return
.limit locals 2
.limit stack 2
.end method
