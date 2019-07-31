.bytecode 50.0
.class synchronized com/nd/android/u/contact/ui/fragment/OrganizationFragment$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/ui/fragment/OrganizationFragment/initEvent()V
.inner class inner com/nd/android/u/contact/ui/fragment/OrganizationFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.method <init>(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
iflt L0
iload 3
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$200(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/ui/bean/OrgNode
astore 1
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/isSelected()Z
istore 7
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
lstore 4
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getUiType()Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_USER Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
ifne L3
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnull L4
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$400(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
ifeq L5
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 8
aload 8
lload 4
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 8
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$500(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
aload 8
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toBackpackSendFlower(Landroid/app/Activity;Lcom/product/android/commonInterface/contact/OapUserSimple;JI)V
L4:
iload 7
ifne L6
iconst_1
istore 7
L7:
aload 1
iload 7
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
return
L5:
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L8
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$600(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
bipush -99
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L4
L8:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$700(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
goto L4
L3:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$800(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnonnull L9
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$900(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$802(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
pop
L9:
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L10
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$800(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnull L11
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$800(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/isMember(J)Z 2
ifne L0
L11:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 4
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1000(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
ifne L12
iload 7
ifne L13
iconst_1
istore 7
L14:
aload 1
iload 7
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/refreshNodes()V
return
L13:
iconst_0
istore 7
goto L14
L12:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
ifnull L15
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1200(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L15:
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
return
L10:
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
return
L2:
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getLevel()I
istore 6
iload 7
ifne L16
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
ldc ""
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1400(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
iconst_1
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$202(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1500(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
iload 6
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getBackType()I
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/getDirectChildren(IJLjava/lang/Integer;I)V
goto L4
L16:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$1500(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Ljava/util/List;
iload 6
iload 3
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/clearData(Ljava/util/List;II)V
goto L4
L6:
iconst_0
istore 7
goto L7
.limit locals 9
.limit stack 6
.end method
