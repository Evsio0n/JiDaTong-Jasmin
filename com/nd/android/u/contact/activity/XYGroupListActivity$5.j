.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$5
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/XYGroupListActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
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
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$1000(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
iconst_0
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L0:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getstatic com/nd/android/u/contact/R$string/group_not_exist I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 6
.limit stack 4
.end method
