.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/PullToRefreshScrollView
.super com/handmark/pulltorefresh/library/PullToRefreshBase
.signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ScrollView;>;"
.inner class final InternalScrollViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshScrollView

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
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
new com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9
dup
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 2
L1:
aload 2
aload 1
ldc "scrollview"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/ScrollView/setId(I)V
aload 2
areturn
L0:
new android/widget/ScrollView
dup
aload 1
aload 2
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 2
goto L1
.limit locals 3
.limit stack 5
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isReadyForPullEnd()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/ScrollView
iconst_0
invokevirtual android/widget/ScrollView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/ScrollView
invokevirtual android/widget/ScrollView/getScrollY()I
aload 1
invokevirtual android/view/View/getHeight()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView/getHeight()I
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
getfield com/handmark/pulltorefresh/library/PullToRefreshScrollView/mRefreshableView Landroid/view/View;
checkcast android/widget/ScrollView
invokevirtual android/widget/ScrollView/getScrollY()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
