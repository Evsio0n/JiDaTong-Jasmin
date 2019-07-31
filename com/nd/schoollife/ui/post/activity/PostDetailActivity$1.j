.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$1
.super java/lang/Object
.implements android/view/View$OnLayoutChangeListener
.enclosing method com/nd/schoollife/ui/post/activity/PostDetailActivity/initContentView()V
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
iload 9
iload 5
isub
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)I
iconst_4
idiv
if_icmpge L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getHeight()I
istore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/getStateBarHeight(Landroid/content/Context;)I
istore 3
iconst_2
newarray int
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$300(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getLocationOnScreen([I)V
iconst_2
newarray int
astore 10
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/view/View;
aload 10
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 1
iconst_1
iaload
istore 4
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/view/View;
invokevirtual android/view/View/getHeight()I
istore 6
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$500(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)I
putfield android/os/Message/arg2 I
aload 1
iload 4
iload 6
iadd
iload 5
iload 2
isub
iload 3
iadd
isub
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$600(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/schoollife/ui/post/handler/PostListHandler;
aload 1
ldc2_w 100L
invokevirtual com/nd/schoollife/ui/post/handler/PostListHandler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
iconst_0
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$102(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;Z)Z
pop
return
.limit locals 11
.limit stack 4
.end method
