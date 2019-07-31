.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/BindWeibo$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/BindWeibo
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
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
getstatic com/android/u/weibo/R$id/button_bind_sina_weibo I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$000(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/header_btn_right I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$100(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/header_btn_left I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/finish()V
return
.limit locals 3
.limit stack 2
.end method
