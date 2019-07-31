.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/processData(ILcom/android/u/weibo/weibo/ui/adapter/ItemViewHolder;)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;

.field final synthetic 'val$c' Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/val$c Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
instanceof com/android/u/weibo/weibo/ui/activity/CommentListActivity
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
checkcast com/android/u/weibo/weibo/ui/activity/CommentListActivity
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/val$c Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/selectComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
