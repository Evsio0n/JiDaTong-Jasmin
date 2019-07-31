.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$2
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.enclosing method com/nd/album/ui/activity/PhotoCommentActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$2

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGlobalLayout()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Z
ifne L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$500(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifeq L1
L0:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$600(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
invokevirtual android/view/View/getRootView()Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$600(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
invokevirtual android/view/View/getHeight()I
isub
bipush 100
if_icmple L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
iconst_1
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$402(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)Z
pop
L1:
return
L2:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$2/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
iconst_0
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$402(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)Z
pop
return
.limit locals 1
.limit stack 2
.end method
