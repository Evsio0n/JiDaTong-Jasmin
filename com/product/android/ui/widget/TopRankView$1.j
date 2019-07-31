.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$1
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/product/android/ui/widget/TopRankView/init()V
.inner class inner com/product/android/ui/widget/TopRankView$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$1/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifeq L0
aload 0
getfield com/product/android/ui/widget/TopRankView$1/this$0 Lcom/product/android/ui/widget/TopRankView;
invokevirtual com/product/android/ui/widget/TopRankView/hideTimeTip()V
L0:
return
.limit locals 3
.limit stack 1
.end method
