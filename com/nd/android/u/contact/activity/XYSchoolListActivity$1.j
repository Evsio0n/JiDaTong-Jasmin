.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSchoolListActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/XYSchoolListActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYSchoolListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSchoolListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
iload 3
invokevirtual android/widget/AdapterView/getItemAtPosition(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContract
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$000(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L0:
return
.limit locals 6
.limit stack 4
.end method
