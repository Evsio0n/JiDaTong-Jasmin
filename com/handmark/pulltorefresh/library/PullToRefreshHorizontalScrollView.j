.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView
.super com/handmark/pulltorefresh/library/PullToRefreshBase
.signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/HorizontalScrollView;>;"
.inner class final InternalHorizontalScrollViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
aload 0
aload 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
new com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9
dup
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 1
L1:
aload 1
getstatic com/handmark/pulltorefresh/library/R$id/scrollview I
invokevirtual android/widget/HorizontalScrollView/setId(I)V
aload 1
areturn
L0:
new android/widget/HorizontalScrollView
dup
aload 1
aload 2
invokespecial android/widget/HorizontalScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 1
goto L1
.limit locals 3
.limit stack 5
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/HORIZONTAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isReadyForPullEnd()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/HorizontalScrollView
iconst_0
invokevirtual android/widget/HorizontalScrollView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/HorizontalScrollView
invokevirtual android/widget/HorizontalScrollView/getScrollX()I
aload 1
invokevirtual android/view/View/getWidth()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView/getWidth()I
isub
if_icmplt L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected isReadyForPullStart()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/HorizontalScrollView
invokevirtual android/widget/HorizontalScrollView/getScrollX()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
