.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity$6
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/XYGroupMemberActivity
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_add_group_member I
if_icmpne L0
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
L2:
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "add_groupMember"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 4
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
ldc com/nd/android/u/contact/activity/XYNewSelectUserActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/startActivity(Landroid/content/Intent;)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_more I
if_icmpne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$502(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Z
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/setShowFlag(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/notifyDataSetChanged()V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/determine_bt_right I
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_quit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGroupOpmessage Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/getDeletMembers()Ljava/util/List;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$802(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
iconst_0
istore 2
L5:
iload 2
iload 3
if_icmpge L6
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L5
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$6/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 1
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$900(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)V
return
.limit locals 5
.limit stack 3
.end method
