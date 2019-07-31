.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/DiscussionManagerActivity
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
getstatic com/nd/android/u/contact/R$id/face I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
ifnull L0
aload 1
getstatic com/nd/android/u/contact/R$id/face I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
lload 2
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$102(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;J)J
pop2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/isDeleteModule()Z
ifeq L1
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/exitDisCussionGroup()V
L0:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/getCount()I
iconst_2
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/exitDisCussionGroup()V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$200(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
return
L1:
lload 2
ldc2_w -2L
lcmp
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/getGroupMenber()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 20
if_icmplt L5
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
getstatic com/nd/android/u/contact/R$string/discussion_member_limit I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 20
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L5:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/init()V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/getGroupMenber()Ljava/util/List;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/setUsers(Ljava/util/List;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L6
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
ldc com/nd/android/u/contact/activity/XYNewSelectUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
L7:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 4
ldc "addmember"
ldc "addmember"
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/startActivity(Landroid/content/Intent;)V
return
L6:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
ldc com/nd/android/u/contact/activity/SelectUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
goto L7
L4:
lload 2
ldc2_w -1L
lcmp
ifne L8
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setDeleteModule(Z)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
return
L8:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 5
.limit stack 6
.end method
