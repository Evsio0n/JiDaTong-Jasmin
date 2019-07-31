.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/nd/album/ui/activity/PhotoCommentActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$1

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/getCount()I
ifeq L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$200(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$1/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
iconst_0
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$300(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)V
return
.limit locals 1
.limit stack 2
.end method
