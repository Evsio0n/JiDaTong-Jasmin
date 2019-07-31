.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$4
.super java/lang/Object
.implements com/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$4/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onListScroll()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$4/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/dismissPopUpwindow()V
return
.limit locals 1
.limit stack 1
.end method
