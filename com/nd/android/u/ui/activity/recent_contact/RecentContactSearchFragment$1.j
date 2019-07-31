.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/onActivityCreated(Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$000(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$000(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/hideInputStatus()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method
