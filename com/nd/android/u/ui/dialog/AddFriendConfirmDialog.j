.bytecode 50.0
.class public synchronized com/nd/android/u/ui/dialog/AddFriendConfirmDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$1
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$2
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4
.inner class protected AddFriendTask inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask outer com/nd/android/u/ui/dialog/AddFriendConfirmDialog

.field final 'TAG' Ljava/lang/String;

.field private 'etComment' Landroid/widget/EditText;

.field private 'etRequest' Landroid/widget/EditText;

.field private 'imgFace' Landroid/widget/ImageView;

.field private 'mAddFriendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mFid' J

.field private 'mMessage' Lcom/nd/android/u/bean4xy/DisplayMessage_System;

.field 'myOnCheckedChangeListener' Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private 'rdAgress' Landroid/widget/RadioButton;

.field private 'rdReject' Landroid/widget/RadioButton;

.field private 'tvNickName' Landroid/widget/TextView;

.field private 'tvSign' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_System;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc "AddFriendConfirmDialog"
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/ui/dialog/AddFriendConfirmDialog$1
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddFriendConfirmDialog$1/<init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
aload 0
new com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddFriendConfirmDialog$4/<init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_System/uidFrom J
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mFid J
aload 0
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/getView()Landroid/view/View;
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setListener()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etComment Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/tvSign Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)J
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addFriend()V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddFriendConfirmDialog$AddFriendTask/<init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public getView()Landroid/view/View;
aload 0
getstatic com/nd/android/u/chat/R$string/add_friend I
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/addfriend_confirm_dialog I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_tx_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/tvSign Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_tx_nickname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/tvNickName Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/imgFace Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_edit_check I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etRequest Landroid/widget/EditText;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_radio_agress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/rdAgress Landroid/widget/RadioButton;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_radio_reject I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/rdReject Landroid/widget/RadioButton;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/addfriend_confirm_dialog_edit I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etComment Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/rdAgress Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/RadioButton/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/rdReject Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/myOnCheckedChangeListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/RadioButton/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/initUserInfoValue()V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etRequest Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setInputType(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public initUserInfoValue()V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/tvNickName Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mFid J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/imgFace Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mFid J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etRequest Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getDisplayContent()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 4
.end method

.method public sendAddFriend()V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/rdAgress Landroid/widget/RadioButton;
invokevirtual android/widget/RadioButton/isChecked()Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/addFriend()V
return
L0:
iconst_3
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mFid J
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/etComment Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/sendNotify(IJLjava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method

.method public setListener()V
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/dialog/AddFriendConfirmDialog$2
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddFriendConfirmDialog$2/<init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3/<init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
invokevirtual com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
