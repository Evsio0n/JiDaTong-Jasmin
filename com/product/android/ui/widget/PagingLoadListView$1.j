.bytecode 50.0
.class synchronized com/product/android/ui/widget/PagingLoadListView$1
.super java/lang/Object
.implements com/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener
.enclosing method com/product/android/ui/widget/PagingLoadListView/setOnScrollListener(Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
.inner class inner com/product/android/ui/widget/PagingLoadListView$1

.field final synthetic 'this$0' Lcom/product/android/ui/widget/PagingLoadListView;

.method <init>(Lcom/product/android/ui/widget/PagingLoadListView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Lcom/huewu/pla/lib/internal/PLA_AbsListView;III)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
iload 2
iload 3
iadd
iconst_1
isub
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$100(Lcom/product/android/ui/widget/PagingLoadListView;)I
isub
invokestatic com/product/android/ui/widget/PagingLoadListView/access$002(Lcom/product/android/ui/widget/PagingLoadListView;I)I
pop
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Lcom/huewu/pla/lib/internal/PLA_AbsListView;I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$000(Lcom/product/android/ui/widget/PagingLoadListView;)I
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$200(Lcom/product/android/ui/widget/PagingLoadListView;)I
iconst_1
isub
if_icmplt L0
iload 2
iconst_1
if_icmpeq L1
iload 2
ifne L0
L1:
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getCount()I
iconst_1
isub
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$100(Lcom/product/android/ui/widget/PagingLoadListView;)I
isub
invokevirtual com/product/android/ui/widget/PagingLoadListView/setCurrentTotalNumber(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$300(Lcom/product/android/ui/widget/PagingLoadListView;)Z
ifeq L0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getVisibility()I
ifne L0
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$400(Lcom/product/android/ui/widget/PagingLoadListView;)Lcom/product/android/ui/widget/PagingLoadFooterView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadFooterView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$500(Lcom/product/android/ui/widget/PagingLoadListView;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$600(Lcom/product/android/ui/widget/PagingLoadListView;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/product/android/ui/widget/PagingLoadListView/access$600(Lcom/product/android/ui/widget/PagingLoadListView;)Landroid/widget/TextView;
ldc "\u6b63\u5728\u52a0\u8f7d..."
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
iconst_0
invokestatic com/product/android/ui/widget/PagingLoadListView/access$302(Lcom/product/android/ui/widget/PagingLoadListView;Z)Z
pop
aload 0
getfield com/product/android/ui/widget/PagingLoadListView$1/this$0 Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/asyncLoadNextPage()V
L0:
return
.limit locals 3
.limit stack 3
.end method
