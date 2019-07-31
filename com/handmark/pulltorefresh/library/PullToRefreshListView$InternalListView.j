.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView
.super android/widget/ListView
.implements com/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor
.inner class protected InternalListView inner com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView outer com/handmark/pulltorefresh/library/PullToRefreshListView

.field private 'mAddedLvFooter' Z

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 2
aload 3
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/mAddedLvFooter Z
return
.limit locals 4
.limit stack 3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.catch java/lang/IndexOutOfBoundsException from L0 to L1 using L2
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
invokespecial android/widget/ListView/dispatchDraw(Landroid/graphics/Canvas;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/IndexOutOfBoundsException/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/IndexOutOfBoundsException from L0 to L1 using L2
L0:
aload 0
aload 1
invokespecial android/widget/ListView/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/IndexOutOfBoundsException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshListView/access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/mAddedLvFooter Z
ifne L0
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshListView/access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
aconst_null
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
iconst_1
putfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/mAddedLvFooter Z
L0:
aload 0
aload 1
invokespecial android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setEmptyView(Landroid/view/View;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setEmptyView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
aload 0
aload 1
invokespecial android/widget/ListView/setEmptyView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method
