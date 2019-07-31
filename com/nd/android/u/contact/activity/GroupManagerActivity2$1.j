.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L0
L1:
return
L0:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L2
L3
L4
L5
L6
default : L7
L7:
lload 4
lstore 2
L5:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_open_conversation I
if_icmpne L8
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L2:
aload 6
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
goto L5
L3:
aload 6
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
goto L5
L4:
aload 6
ldc "classgid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
goto L5
L6:
aload 6
ldc "clubgid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
goto L5
L8:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_member I
if_icmpne L9
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L10
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/nd/android/u/contact/activity/XYGroupMemberActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L10:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/nd/android/u/contact/activity/GroupMemberActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L9:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_notices I
if_icmpne L11
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L12
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/product/android/commonInterface/contact/OapGroup;J)Z
ifeq L12
aload 6
ldc "canEdit"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L12:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/nd/android/u/contact/activity/GroupNoticesActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L11:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_introduction I
if_icmpne L13
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L14
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/product/android/commonInterface/contact/OapGroup;J)Z
ifeq L14
aload 6
ldc "canEdit"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L14:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/nd/android/u/contact/activity/GroupIntroductionActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L13:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_chat_history I
if_icmpne L15
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&title=0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
astore 7
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 6
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 7
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/product/android/ui/activity/WebViewActivity
aload 1
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Ljava/lang/Class;Landroid/os/Bundle;)V
return
L15:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_transfer I
if_icmpne L16
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
ldc com/nd/android/u/contact/activity/TransferGroupActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L16:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_exit I
if_icmpeq L17
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_btn_exit_group I
if_icmpne L18
L17:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroup()V
return
L18:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_joinperm I
if_icmpne L19
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$1900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/changeGroupJoinperm()V
return
L19:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_album I
if_icmpne L20
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toGroupAlbumActivity(Landroid/content/Context;J)V
return
L20:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_share I
if_icmpne L21
lconst_0
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lconst_0
lcmp
ifeq L22
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
L23:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCategory()I
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatFileListActivity(Landroid/content/Context;JIJ)V
return
L22:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lconst_0
lcmp
ifeq L24
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
lstore 2
goto L23
L24:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L23
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lstore 2
goto L23
L21:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_receivemsg I
if_icmpeq L25
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_msg_img I
if_icmpne L26
L25:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
return
L26:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_clear_message I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$2900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/deleteChatHis(Landroid/content/Context;J)V
return
.limit locals 8
.limit stack 6
.end method
