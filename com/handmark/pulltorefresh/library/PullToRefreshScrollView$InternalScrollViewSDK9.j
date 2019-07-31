.bytecode 50.0
.class final synchronized com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9
.super android/widget/ScrollView
.annotation invisible Landroid/annotation/TargetApi;
value I = 9
.end annotation
.inner class final InternalScrollViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshScrollView

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
aload 0
aload 2
aload 3
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 3
.end method

.method private getScrollRange()I
iconst_0
istore 1
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getChildCount()I
ifle L0
iconst_0
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getHeight()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getPaddingBottom()I
isub
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getPaddingTop()I
isub
isub
invokestatic java/lang/Math/max(II)I
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokespecial android/widget/ScrollView/overScrollBy(IIIIIIIIZ)Z
istore 10
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
iload 1
iload 3
iload 2
iload 4
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9/getScrollRange()I
iload 9
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
iload 10
ireturn
.limit locals 11
.limit stack 10
.end method
