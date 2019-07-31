.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener

.field private 'faceimg' Landroid/widget/ImageView;

.field private 'generalId' J

.field private 'groupType' I

.field private 'messageType' I

.field private 'name' Ljava/lang/String;

.field private 'singleCloseBtn' Landroid/widget/ImageView;

.field private 'singleNicknameText' Landroid/widget/TextView;

.field private 'singleSignText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_single_header_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/faceimg Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_single_header_tx_nickname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleNicknameText Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_single_header_tx_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleSignText Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_single_header_bt_close I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleCloseBtn Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/imgEnter I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleCloseBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "generalid"
ldc2_w -1L
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;J)J
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
aload 0
aload 1
ldc "MESSAGE_TYPE"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/messageType I
aload 0
aload 1
ldc "grouptype"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/groupType I
aload 0
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/name Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleNicknameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/messageType I
ifne L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/faceimg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleSignText Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserSignature(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/messageType I
iconst_1
if_icmpne L1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/groupType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupNotice(IJ)Ljava/lang/String; 3
astore 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/faceimg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/groupType I
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByGroup(Landroid/widget/ImageView;Ljava/lang/String;I)V 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/singleSignText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/chat_single_header_bt_close I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/imgEnter I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/startChat()V
return
.limit locals 3
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_single_header I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected startChat()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc_w 8388608
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/messageType I
ifne L0
aload 1
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
ldc "fid"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
L1:
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/name Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/chat/R$id/chat_edit I
invokevirtual android/support/v4/app/FragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
astore 2
aload 2
ifnull L2
aload 1
ldc "unsaved_input"
aload 2
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L2:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/messageType I
iconst_1
if_icmpne L1
aload 1
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Group
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
ldc "grouptype"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/groupType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "gid"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L1
.limit locals 3
.limit stack 4
.end method
