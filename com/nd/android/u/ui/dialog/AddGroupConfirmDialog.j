.bytecode 50.0
.class public synchronized com/nd/android/u/ui/dialog/AddGroupConfirmDialog
.super android/app/Dialog
.inner class inner com/nd/android/u/ui/dialog/AddGroupConfirmDialog$1
.inner class inner com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2
.inner class inner com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3

.field final 'TAG' Ljava/lang/String;

.field private 'agressRadio' Landroid/widget/RadioButton;

.field private 'btnCancle' Landroid/widget/Button;

.field private 'btnOk' Landroid/widget/Button;

.field private 'contentText' Landroid/widget/TextView;

.field private 'edit' Landroid/widget/EditText;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'fid' J

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/bean4xy/DisplayMessage_System;

.field 'myOnCheckedChangeListener' Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private 'rejectRadio' Landroid/widget/RadioButton;

.field private 'requestedit' Landroid/widget/EditText;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_System;)V
aload 0
aload 1
getstatic com/nd/android/u/chat/R$style/MyDialogStyle I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
ldc "AddFriendConfirmDialog"
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/ui/dialog/AddGroupConfirmDialog$1
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddGroupConfirmDialog$1/<init>(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)V
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_System/uidFrom J
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/fid J
aload 0
getstatic com/nd/android/u/chat/R$string/group_sys_msg I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/setTitle(I)V
aload 0
getstatic com/nd/android/u/chat/R$layout/addgroup_confirm I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/initView()V
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/setListener()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/edit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/contentText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initUserInfoValue()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/uidFrom J
lstore 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 6
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
lstore 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupType I
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupName(IJ)Ljava/lang/String; 3
astore 7
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
iconst_1
if_icmpne L0
getstatic com/nd/android/u/chat/R$string/your_friend_ask_u_to_join_group I
istore 1
L1:
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/contentText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mContext Landroid/content/Context;
iload 1
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 6
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 7
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/fid J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/requestedit Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalStr Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/requestedit Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setSingleLine(Z)V
return
L0:
getstatic com/nd/android/u/chat/R$string/your_friend_request_to_join_group I
istore 1
goto L1
.limit locals 8
.limit stack 8
.end method

.method public initView()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_tx_nickname I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/contentText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_img_face I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_edit_check I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/requestedit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_radio_agress I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/agressRadio Landroid/widget/RadioButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_radio_reject I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/rejectRadio Landroid/widget/RadioButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_edit I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/edit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_btn_ok I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnOk Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/addgroup_confirm_dialog_btn_cancle I
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnCancle Landroid/widget/Button;
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/initUserInfoValue()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/agressRadio Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/RadioButton/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/rejectRadio Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/RadioButton/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public sendCommend()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/agressRadio Landroid/widget/RadioButton;
invokevirtual android/widget/RadioButton/isChecked()Z
ifeq L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/uidFrom J
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/agreeToAddGroup(JJI)V 5
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/uidFrom J
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/edit Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalType I
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/refuseToJoinGroup(Ljava/lang/String;IJLjava/lang/String;I)V
return
.limit locals 1
.limit stack 6
.end method

.method public setListener()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnOk Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/ok I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnOk Landroid/widget/Button;
new com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/<init>(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnCancle Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog/btnCancle Landroid/widget/Button;
new com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3/<init>(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method
