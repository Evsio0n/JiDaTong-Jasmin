.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/CommentDetailActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/CommentDetailActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/CommentDetailActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokevirtual com/nd/schoollife/ui/post/activity/CommentDetailActivity/onBackPressed()V
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$000(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/CommentDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/CommentDetailActivity/access$000(Lcom/nd/schoollife/ui/post/activity/CommentDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideInputMethod()V
L0:
return
.limit locals 2
.limit stack 1
.end method
