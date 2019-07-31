.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;

.field final synthetic 'val$replyInfo' Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4/val$replyInfo Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
.catch java/lang/NumberFormatException from L0 to L1 using L2
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/access$800(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/CommentDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "comment_id"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4/val$replyInfo Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getOid()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$4/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/access$900(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/NumberFormatException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method
