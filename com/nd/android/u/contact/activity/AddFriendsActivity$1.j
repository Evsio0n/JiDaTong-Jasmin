.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/AddFriendsActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
getstatic com/nd/android/u/contact/R$string/no_funcyusa I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L0:
iload 3
iconst_1
if_icmpne L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
ldc com/nd/android/u/contact/activity/XYNewSearchGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/startActivity(Landroid/content/Intent;)V
return
L2:
iload 3
iconst_2
if_icmpne L3
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
ldc com/nd/android/u/contact/activity/CreateGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 3
iconst_3
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toSearchPspInfoActivity(Landroid/content/Context;)V
return
L4:
iload 3
iconst_4
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$1/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$OrganizationEntry/toFindFriendsActivity(Landroid/content/Context;)V
return
.limit locals 6
.limit stack 4
.end method
