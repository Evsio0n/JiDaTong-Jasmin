.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/DismissGroupDailog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/DismissGroupDailog/initEvent()V
.inner class inner com/nd/android/u/contact/dialog/DismissGroupDailog$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/DismissGroupDailog;

.method <init>(Lcom/nd/android/u/contact/dialog/DismissGroupDailog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog/getContext()Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/DismissGroupDailog/access$000(Lcom/nd/android/u/contact/dialog/DismissGroupDailog;)I
ifne L2
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/DismissGroupDailog/access$100(Lcom/nd/android/u/contact/dialog/DismissGroupDailog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandDimssGroup(J)Ljava/lang/String;
astore 1
L3:
aload 1
ifnull L4
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
aload 1
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog/setGenKey(Ljava/lang/String;)V
return
L2:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/DismissGroupDailog/access$100(Lcom/nd/android/u/contact/dialog/DismissGroupDailog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandQuitGroup(IJ)Ljava/lang/String;
astore 1
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/dialog/DismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/DismissGroupDailog;
invokevirtual com/nd/android/u/contact/dialog/DismissGroupDailog/dismissDialog()V
return
.limit locals 3
.limit stack 4
.end method
