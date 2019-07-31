.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$5
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/schoollife/ui/post/activity/PostDetailActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1000(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getType()Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
getstatic com/nd/schoollife/R$string/comment_content_hint_comment I
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/getString(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1500(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getType()Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/initStates(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
return
.limit locals 3
.limit stack 6
.end method
