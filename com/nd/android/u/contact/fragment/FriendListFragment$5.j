.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$5/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$5/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$600(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$5/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$700(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/RelativeLayout$LayoutParams;
iconst_0
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$5/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$900(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$5/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$800(Lcom/nd/android/u/contact/fragment/FriendListFragment;)I
invokevirtual android/widget/ExpandableListView/collapseGroup(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method
