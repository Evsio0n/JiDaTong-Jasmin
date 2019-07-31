.bytecode 50.0
.class final synchronized com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews
.super java/lang/Object
.implements java/lang/Runnable
.inner class private final SwapViews inner com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews outer com/nd/android/u/contact/activity/PhotoWallActivity

.field private final 'mPosition' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 2
putfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/mPosition I
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getWidth()I
i2f
fconst_2
fdiv
fstore 1
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getHeight()I
i2f
fconst_2
fdiv
fstore 2
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/mPosition I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$902(Lcom/nd/android/u/contact/activity/PhotoWallActivity;B)B
pop
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/cloneParam(Lcom/product/android/ui/widget/PagingLoadListView;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadListView/setVisibility(I)V
new com/nd/android/u/contact/anim/Rotate3dAnimation
dup
ldc_w 90.0F
fconst_0
fload 1
fload 2
ldc_w 310.0F
iconst_0
invokespecial com/nd/android/u/contact/anim/Rotate3dAnimation/<init>(FFFFFZ)V
astore 3
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$1100(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$900(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)B
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
aload 3
ldc2_w 500L
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setDuration(J)V
aload 3
iconst_1
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setFillAfter(Z)V
aload 3
new android/view/animation/DecelerateInterpolator
dup
invokespecial android/view/animation/DecelerateInterpolator/<init>()V
invokevirtual com/nd/android/u/contact/anim/Rotate3dAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
aload 3
invokevirtual android/view/ViewGroup/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$902(Lcom/nd/android/u/contact/activity/PhotoWallActivity;B)B
pop
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
bipush 8
invokevirtual com/product/android/ui/widget/PagingLoadListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/cloneParam(Lcom/product/android/ui/widget/PagingLoadListView;)V
new com/nd/android/u/contact/anim/Rotate3dAnimation
dup
ldc_w 90.0F
fconst_0
fload 1
fload 2
ldc_w 310.0F
iconst_0
invokespecial com/nd/android/u/contact/anim/Rotate3dAnimation/<init>(FFFFFZ)V
astore 3
goto L1
.limit locals 4
.limit stack 8
.end method
