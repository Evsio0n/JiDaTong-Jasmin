.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/header_btn_left I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/header_btn_right I
if_icmpne L1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "path"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;
iconst_m1
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity/finish()V
return
.limit locals 3
.limit stack 3
.end method
