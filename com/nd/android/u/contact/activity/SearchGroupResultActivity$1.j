.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchGroupResultActivity$1
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/SearchGroupResultActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/SearchGroupResultActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
iload 2
iload 3
iadd
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$102(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;I)I
pop
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/getCount()I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$300(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)I
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/isAddFootView Z
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$500(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$400(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$500(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
iconst_1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/isAddFootView Z
L2:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
iconst_0
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/show Z
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/searchGroup()V
return
.limit locals 3
.limit stack 2
.end method
