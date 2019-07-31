.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdCommonRegist$1
.super java/lang/Object
.implements android/widget/TabHost$OnTabChangeListener
.enclosing method com/nd/rj/common/login/view/NdCommonRegist/initTabs()V
.inner class inner com/nd/rj/common/login/view/NdCommonRegist$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdCommonRegist;

.method <init>(Lcom/nd/rj/common/login/view/NdCommonRegist;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdCommonRegist$1/this$0 Lcom/nd/rj/common/login/view/NdCommonRegist;
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
getfield com/nd/rj/common/login/view/NdCommonRegist$1/this$0 Lcom/nd/rj/common/login/view/NdCommonRegist;
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/getCurrentActivity()Landroid/app/Activity;
astore 1
aload 1
instanceof com/nd/rj/common/login/view/NdRegistMobile
ifeq L0
aload 1
checkcast com/nd/rj/common/login/view/NdRegistMobile
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/recoverUI()V
L0:
return
.limit locals 2
.limit stack 2
.end method
