.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView
.super android/widget/RelativeLayout
.inner class inner com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$1
.inner class inner com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2
.inner class inner com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$3

.field private 'mIvAdd' Landroid/widget/ImageView;

.field private 'mIvPic' Lcom/nd/android/u/ui/widge/CircleImageView;

.field private 'mRoot' Landroid/view/View;

.field private 'mTvMsgContent' Landroid/widget/TextView;

.field private 'mTvMsgTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/init()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;Landroid/content/Context;Lcom/product/android/commonInterface/chat/SearchContactsItem;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/onClickAdd(Landroid/content/Context;Lcom/product/android/commonInterface/chat/SearchContactsItem;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;ILandroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 0
iload 1
aload 2
aload 3
aload 4
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/onClickItem(ILandroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 5
.limit stack 5
.end method

.method private init()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/search_contacts_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pic I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/msg_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mTvMsgTitle Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/msg_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mTvMsgContent Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/add I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvAdd Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 4
.end method

.method private onClickAdd(Landroid/content/Context;Lcom/product/android/commonInterface/chat/SearchContactsItem;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 2
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L0
aload 1
getstatic com/nd/android/u/chat/R$string/canot_add_self I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/isInMyFriendGroup(J)Z 2
ifeq L1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/already_be_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUnitid()I 0
if_icmpeq L2
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 2
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/openAddFriendRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V 2
return
L2:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 2
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/openAddFriendFollowRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V 2
return
.limit locals 3
.limit stack 4
.end method

.method private onClickItem(ILandroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 3
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
lstore 5
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/isIstransmit()Z
ifeq L0
new com/nd/android/u/bean4xy/PersonContactItem
dup
invokespecial com/nd/android/u/bean4xy/PersonContactItem/<init>()V
astore 3
aload 3
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/setId(Ljava/lang/String;)V
aload 3
aload 2
aload 4
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
L0:
iload 1
getstatic com/nd/android/u/chat/R$id/pic I
if_icmpne L1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
lload 5
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
L1:
lload 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L2
getstatic com/nd/android/u/chat/R$string/chat_to_self I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
sipush 1000
sipush 2001
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "fid"
lload 5
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 2
aload 3
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 7
.limit stack 4
.end method

.method public updateContent(Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;ZZ)V
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
lstore 7
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 7
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
getstatic com/nd/android/u/chat/R$drawable/face_default I
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setImageResource(I)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
lload 7
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
iload 5
ifne L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 7
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 9
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mTvMsgTitle Landroid/widget/TextView;
aload 9
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 4
ifeq L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mTvMsgContent Landroid/widget/TextView;
ldc "\u901a\u8baf\u5f55\u641c\u7d22\u7ed3\u679c"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/isFriend()Z
ifeq L4
bipush 8
istore 6
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvAdd Landroid/widget/ImageView;
iload 6
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
new com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2
dup
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mRoot Landroid/view/View;
new com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$3
dup
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$3/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 7
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getWorkId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 9
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mTvMsgContent Landroid/widget/TextView;
ldc "\u7f51\u7edc\u641c\u7d22\u7ed3\u679c"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
iconst_0
istore 6
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/mIvAdd Landroid/widget/ImageView;
new com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$1
dup
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L5
.limit locals 10
.limit stack 7
.end method
