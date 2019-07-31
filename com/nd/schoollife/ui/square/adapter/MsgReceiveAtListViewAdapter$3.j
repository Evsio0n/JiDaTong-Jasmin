.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;

.field final synthetic 'val$isMainPost' Z

.field final synthetic 'val$postInfo' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;ZLcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/val$isMainPost Z
aload 0
aload 3
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/val$isMainPost Z
ifeq L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/access$500(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
L1:
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/access$700(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/access$600(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/CommentDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "comment_id"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
goto L1
.limit locals 2
.limit stack 4
.end method
