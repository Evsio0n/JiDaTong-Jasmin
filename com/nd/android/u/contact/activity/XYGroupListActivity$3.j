.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$3
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYGroupListActivity
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1002
L0
default : L1
L1:
return
L0:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 1
ldc "group"
invokevirtual android/os/Bundle/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$302(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$400(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$502(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
lookupswitch
0 : L2
1 : L3
2 : L4
3 : L5
4 : L6
1001 : L7
default : L8
L8:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
ifne L9
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L10
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$900(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getstatic com/nd/android/u/contact/R$string/receive_disscussion_msg I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L8
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "classgid"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L8
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "clubgid"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "grouptype"
ldc2_w 4L
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L8
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "grouptype"
ldc2_w 3L
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L8
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L11
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L12:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L8
L11:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L12
L7:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L8
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L8
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGenKey Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/removeFeedbackKey(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$100(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
goto L8
L10:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$900(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getstatic com/nd/android/u/contact/R$string/enable_group_msg I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L9:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L13
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$900(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getstatic com/nd/android/u/contact/R$string/shield_disscussion_msg I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L13:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$900(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getstatic com/nd/android/u/contact/R$string/shield_group_msg I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method
