.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdLogin$6
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/login/view/NdLogin
.inner class inner com/nd/rj/common/login/view/NdLogin$6

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdLogin;

.method <init>(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdLogin$6/this$0 Lcom/nd/rj/common/login/view/NdLogin;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin$6/this$0 Lcom/nd/rj/common/login/view/NdLogin;
invokestatic com/nd/rj/common/login/view/NdLogin/access$700(Lcom/nd/rj/common/login/view/NdLogin;)Lcom/nd/rj/common/login/NdLogin91Platform;
aload 0
getfield com/nd/rj/common/login/view/NdLogin$6/this$0 Lcom/nd/rj/common/login/view/NdLogin;
invokevirtual com/nd/rj/common/login/NdLogin91Platform/doRefreshCheckcode(Landroid/content/Context;)I
pop
return
.limit locals 2
.limit stack 2
.end method
