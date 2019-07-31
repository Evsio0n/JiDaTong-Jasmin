.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$3
.super android/os/Handler
.enclosing method com/android/u/weibo/contact/ui/activity/MyContact
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$3

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
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
L4
default : L5
L5:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/android/u/weibo/R$string/bind I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/android/u/weibo/R$string/bind_sina_weibo_cancel I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L5
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1700(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
goto L5
L2:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1800(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
goto L5
L3:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1900(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
goto L5
L4:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnonnull L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
goto L5
L6:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$3/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
getfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/mnickName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
.limit locals 2
.limit stack 3
.end method
