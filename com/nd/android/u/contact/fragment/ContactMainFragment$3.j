.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$3
.super java/lang/Object
.implements com/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDownPullRefresh()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$3/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
iconst_1
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/updateFriendList(Z)V
return
.limit locals 1
.limit stack 2
.end method
