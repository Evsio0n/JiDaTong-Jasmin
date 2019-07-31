.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/XYGroupListActivity/initComponentValue()V
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/stop()V
return
.limit locals 2
.limit stack 1
.end method
