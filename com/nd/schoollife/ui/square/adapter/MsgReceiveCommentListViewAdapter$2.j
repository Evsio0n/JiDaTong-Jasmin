.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;

.field final synthetic 'val$scopeId' J

.field final synthetic 'val$scopeType' I

.method <init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;IJ)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/val$scopeType I
aload 0
lload 3
putfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/val$scopeId J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
bipush 16
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/val$scopeType I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$200(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
L1:
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/val$scopeId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$400(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter$2/this$0 Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;
invokestatic com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/access$300(Lcom/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
goto L1
.limit locals 2
.limit stack 4
.end method
