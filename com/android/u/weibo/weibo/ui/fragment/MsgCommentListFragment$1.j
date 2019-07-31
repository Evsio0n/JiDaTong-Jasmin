.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/onCommentClickMsg(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;

.field final synthetic 'val$replyInfo' Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/val$replyInfo Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
iload 2
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/val$replyInfo Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$500(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$1/val$replyInfo Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$600(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
.limit locals 3
.limit stack 2
.end method
