.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;

.field final synthetic 'val$postInfo' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/access$500(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/val$postInfo Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/access$600(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
