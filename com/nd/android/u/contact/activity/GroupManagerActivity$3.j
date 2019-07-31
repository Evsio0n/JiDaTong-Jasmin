.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
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
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
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
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
iconst_0
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L2:
aload 6
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L5
L3:
aload 6
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L5
L4:
aload 6
ldc "classgid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L5
L6:
aload 6
ldc "clubgid"
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
lstore 2
goto L5
L9:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L8:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_member I
if_icmpne L10
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L11
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/nd/android/u/contact/activity/XYGroupMemberActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L11:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/nd/android/u/contact/activity/GroupMemberActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L10:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_notices I
if_icmpne L12
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L13
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$1900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L13
aload 6
ldc "canEdit"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L13:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/nd/android/u/contact/activity/GroupNoticesActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L12:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_introduction I
if_icmpne L14
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L15
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L15
aload 6
ldc "canEdit"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L15:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/nd/android/u/contact/activity/GroupIntroductionActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L14:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_chat_history I
if_icmpne L16
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
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&title=0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
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
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/product/android/ui/activity/WebViewActivity
aload 1
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
return
L16:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_transfer I
if_icmpne L17
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
ldc com/nd/android/u/contact/activity/TransferGroupActivity
aload 6
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
L17:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_exit I
if_icmpeq L18
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_btn_exit_group I
if_icmpne L19
L18:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/exitGroup()V
return
L19:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_joinperm I
if_icmpne L20
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/changeGroupJoinperm()V
return
L20:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_album I
if_icmpne L21
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toGroupAlbumActivity(Landroid/content/Context;J)V
return
L21:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_share I
if_icmpne L22
lconst_0
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lconst_0
lcmp
ifeq L23
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
L24:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCatagory()I
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatFileListActivity(Landroid/content/Context;JIJ)V
return
L23:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$2900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lconst_0
lcmp
ifeq L25
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L24
L25:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L24
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
lstore 2
goto L24
L22:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_receivemsg I
if_icmpeq L26
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_msg_img I
if_icmpne L27
L26:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
return
L27:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_layout_clear_message I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/deleteChatHis(Landroid/content/Context;J)V
return
.limit locals 8
.limit stack 6
.end method
