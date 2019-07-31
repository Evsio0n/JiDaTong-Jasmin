.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/SearchGroupView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/view/SearchGroupView
.inner class inner com/nd/android/u/contact/view/SearchGroupView$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/SearchGroupView;

.method <init>(Lcom/nd/android/u/contact/view/SearchGroupView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L0
L1:
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/search_group_list_item_btn_add I
if_icmpne L3
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
iconst_0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 1
aload 1
ifnull L4
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 2
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
lcmp
ifne L5
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/already_in_group I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
iconst_2
if_icmpne L6
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/the_group_not_allow_anyone I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
iconst_1
if_icmpne L7
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aconst_null
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandAddGroupRequest(JLjava/lang/String;)V
return
L7:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
ifne L1
new com/nd/android/u/contact/dialog/AddGroupRequestDialog
dup
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokespecial com/nd/android/u/contact/dialog/AddGroupRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;)V
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$200(Lcom/nd/android/u/contact/view/SearchGroupView;)I
ifne L8
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "group"
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L8:
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$100(Lcom/nd/android/u/contact/view/SearchGroupView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
aload 0
getfield com/nd/android/u/contact/view/SearchGroupView$1/this$0 Lcom/nd/android/u/contact/view/SearchGroupView;
invokestatic com/nd/android/u/contact/view/SearchGroupView/access$000(Lcom/nd/android/u/contact/view/SearchGroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
.limit locals 3
.limit stack 4
.end method
