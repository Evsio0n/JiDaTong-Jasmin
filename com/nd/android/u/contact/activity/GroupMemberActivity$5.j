.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupMemberActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupMemberActivity
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
iconst_1
istore 2
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_member_add_layout I
if_icmpeq L0
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_member_addfriend I
if_icmpne L1
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getstatic com/nd/android/u/contact/R$string/fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
L3:
return
L2:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
aload 1
ldc "add_groupMemger"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
ldc com/nd/android/u/contact/activity/XYNewSelectUserActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
L5:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/startActivity(Landroid/content/Intent;)V
return
L4:
aload 1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
ldc com/nd/android/u/contact/activity/SelectRecipientActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
goto L5
L1:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_right I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$600(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Z
ifne L6
L7:
aload 1
iload 2
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$602(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$600(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Z
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/setShowFlag(Z)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/notifyDataSetChanged()V
return
L6:
iconst_0
istore 2
goto L7
.limit locals 3
.limit stack 3
.end method
