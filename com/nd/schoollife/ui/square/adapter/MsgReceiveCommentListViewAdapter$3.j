.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;

.field final synthetic 'val$postInfo' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field final synthetic 'val$toPostInfo' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
aload 3
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$toPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
lconst_0
lstore 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lstore 2
L1:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$500(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/CommentDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "comment_id"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$600(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$toPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$3/val$toPostInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lstore 2
goto L1
.limit locals 4
.limit stack 4
.end method
