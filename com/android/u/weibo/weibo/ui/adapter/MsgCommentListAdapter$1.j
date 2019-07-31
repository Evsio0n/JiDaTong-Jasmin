.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;

.field final synthetic 'val$replyInfo' Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1/val$replyInfo Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1/val$replyInfo Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
