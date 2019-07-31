.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter
.super android/widget/BaseAdapter
.inner class private GridViewAdapter inner com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter outer com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private 'count' I

.field private 'mItemHeight' I

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;

.method private <init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/count I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/mItemHeight I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/<init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
iload 1
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokestatic com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/access$300(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)Landroid/widget/AbsListView$LayoutParams;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/setGridViewData(ILandroid/view/View;Landroid/widget/AbsListView$LayoutParams;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public setCountNum(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setItemHeight(I)V
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/mItemHeight I
if_icmpne L0
return
L0:
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/mItemHeight I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/mItemHeight I
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokestatic com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/access$302(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Landroid/widget/AbsListView$LayoutParams;)Landroid/widget/AbsListView$LayoutParams;
pop
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 5
.end method
