.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/base/NetUnReachActivity
.super com/product/android/ui/activity/HeaderActivity

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/netunreach I
invokevirtual com/nd/android/u/ui/activity/base/NetUnReachActivity/setContentView(I)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokevirtual com/nd/android/u/ui/activity/base/NetUnReachActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/base/NetUnReachActivity/setActivityTitle(Ljava/lang/String;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method
