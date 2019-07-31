.bytecode 50.0
.class public synchronized com/common/android/ui/widget/PullUpLoadMoreListView
.super android/widget/ListView
.implements android/widget/AbsListView$OnScrollListener
.inner class inner com/common/android/ui/widget/PullUpLoadMoreListView$1
.inner class public static abstract interface OnCheckFillFullListener inner com/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener outer com/common/android/ui/widget/PullUpLoadMoreListView
.inner class public static abstract interface OnPullUpLoadMoreListener inner com/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener outer com/common/android/ui/widget/PullUpLoadMoreListView

.field private 'DEFAULT_CHECK_LISTENER' Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;

.field private 'mLastItemVisible' Z

.field private 'mOnCheckFillFullListener' Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;

.field private 'mOnPullUpLoadMoreListener' Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/ui/widget/PullUpLoadMoreListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/common/android/ui/widget/PullUpLoadMoreListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new com/common/android/ui/widget/PullUpLoadMoreListView$1
dup
aload 0
invokespecial com/common/android/ui/widget/PullUpLoadMoreListView$1/<init>(Lcom/common/android/ui/widget/PullUpLoadMoreListView;)V
putfield com/common/android/ui/widget/PullUpLoadMoreListView/DEFAULT_CHECK_LISTENER Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
aload 0
aload 0
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/DEFAULT_CHECK_LISTENER Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
putfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnCheckFillFullListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
return
.limit locals 4
.limit stack 4
.end method

.method private setOnCheckFillFullListener(Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;)V
aload 1
ifnull L0
aload 0
aload 1
putfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnCheckFillFullListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
return
L0:
aload 0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/DEFAULT_CHECK_LISTENER Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
putfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnCheckFillFullListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
iload 4
ifle L0
iload 2
iload 3
iadd
iload 4
iconst_1
isub
if_icmplt L0
iconst_1
istore 5
L1:
aload 0
iload 5
putfield com/common/android/ui/widget/PullUpLoadMoreListView/mLastItemVisible Z
return
L0:
iconst_0
istore 5
goto L1
.limit locals 6
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
ifnull L0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mLastItemVisible Z
ifeq L0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
invokeinterface com/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener/needCheckFillFull()Z 0
ifeq L1
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnCheckFillFullListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
aload 1
invokeinterface com/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener/checkIsFillFull(Landroid/widget/AbsListView;)Z 1
ifeq L0
L1:
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
invokeinterface com/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener/onPullUpLoadMore()V 0
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public setOnPullUpLoadMoreListener(Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;)V
aload 0
aload 1
putfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
ifnull L0
aload 0
aload 0
getfield com/common/android/ui/widget/PullUpLoadMoreListView/mOnPullUpLoadMoreListener Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener;
invokeinterface com/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener/getOnCheckFillFullListener()Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener; 0
invokespecial com/common/android/ui/widget/PullUpLoadMoreListView/setOnCheckFillFullListener(Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
