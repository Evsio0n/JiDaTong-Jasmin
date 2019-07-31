.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$12
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/onLongClickMsg(Ljava/lang/Object;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$12

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$clipBoxContent' Ljava/lang/String;

.field final synthetic 'val$obj' Ljava/lang/Object;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Ljava/lang/Object;Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$obj Ljava/lang/Object;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$clipBoxContent Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
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
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$obj Ljava/lang/Object;
instanceof com/android/u/weibo/weibo/business/bean/ReplyInfo
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$obj Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 1
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lcmp
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;J)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/selectComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$obj Ljava/lang/Object;
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$obj Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$12/val$clipBoxContent Ljava/lang/String;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 4
.end method
