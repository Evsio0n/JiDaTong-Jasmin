.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactBaseFragment$3
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/fragment/ContactBaseFragment
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$3

.field 'endIndex' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactBaseFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 2
iload 3
iadd
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/endIndex I
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/endIndex I
iload 4
if_icmplt L0
aload 0
iload 4
iconst_1
isub
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/endIndex I
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L2:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setDisplayHeaderImageEnable(Z)V
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setDisplayHeaderImageEnable(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setDisplayHeaderImageEnable(Z)V
return
.limit locals 3
.limit stack 2
.end method
