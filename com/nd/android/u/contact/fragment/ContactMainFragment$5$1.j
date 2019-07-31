.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$5$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment$5/onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$5$1/this$1 Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5$1/this$1 Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5$1/this$1 Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 1
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
