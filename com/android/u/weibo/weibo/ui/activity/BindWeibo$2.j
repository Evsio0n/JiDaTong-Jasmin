.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/BindWeibo$2
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity/BindWeibo
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch -2
L0
L1
L2
L3
default : L4
L4:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
getstatic com/android/u/weibo/R$string/bind_sina_weibo_cancel I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$200(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$300(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
goto L4
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
getstatic com/android/u/weibo/R$string/bind_sina_weibo_error I
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$200(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$300(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$400(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
goto L4
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$500(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)V
goto L4
.limit locals 2
.limit stack 3
.end method
