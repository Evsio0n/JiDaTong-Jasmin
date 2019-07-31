.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.inner class private HeaderAnimationListener inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener outer com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener$1

.field private 'height' I

.field private 'stateAtAnimationStart' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.field final synthetic 'this$0' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;

.field private 'translation' I

.method public <init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;I)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 2
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/translation I
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener;)Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
astore 1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/stateAtAnimationStart Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
iconst_0
istore 2
L1:
aload 1
iload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$4(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 1
aload 1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/height I
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 1
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$1(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Z
ifeq L2
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
iconst_1
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/setVerticalScrollBarEnabled(Z)V
L2:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$5(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Z
ifeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
iconst_0
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$6(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Z)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener$1
dup
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener$1/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener;)V
ldc2_w 20L
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/postDelayed(Ljava/lang/Runnable;J)Z
pop
L4:
return
L0:
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$2()I
ineg
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$3(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getTop()I
isub
istore 2
goto L1
L3:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/stateAtAnimationStart Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L4
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$8(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
return
.limit locals 3
.limit stack 4
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$0(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/stateAtAnimationStart Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 1
aload 0
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/height I
aload 1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/translation I
isub
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 1
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$1(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
iconst_0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/setVerticalScrollBarEnabled(Z)V
L0:
return
.limit locals 2
.limit stack 3
.end method
