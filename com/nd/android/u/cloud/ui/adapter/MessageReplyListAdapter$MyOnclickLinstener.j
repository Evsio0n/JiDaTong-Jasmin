.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyOnclickLinstener inner com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener outer com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;

.field 'user' Lcom/nd/android/u/cloud/bean/SmsReplyBean;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;Lcom/nd/android/u/cloud/bean/SmsReplyBean;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/this$0 Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/user Lcom/nd/android/u/cloud/bean/SmsReplyBean;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "smsreplybean"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/user Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/this$0 Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
invokestatic com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/access$100(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/MessageReplyDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/this$0 Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
invokestatic com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/access$100(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method
