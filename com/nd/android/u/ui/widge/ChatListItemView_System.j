.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_System
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_System$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_System$2
.inner class private UserFaceImgOnClickListeren inner com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren outer com/nd/android/u/ui/widge/ChatListItemView_System

.field private 'approvalOnClickListener' Landroid/view/View$OnClickListener;

.field private 'causeText' Landroid/widget/TextView;

.field private 'clickGroupHeader' Landroid/view/View$OnClickListener;

.field private 'contentText' Landroid/widget/TextView;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'frienddetailonClick' Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/bean4xy/DisplayMessage_System;

.field private 'nameText' Landroid/widget/TextView;

.field private 'readImg' Landroid/widget/ImageView;

.field private 'timeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_System$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_System$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_System/clickGroupHeader Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_System$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_System$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_System/approvalOnClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_System/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/system_message_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_content I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/contentText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/contentText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_face I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_cause I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_username I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_tv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/system_message_item_img_unread I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_System/readImg Landroid/widget/ImageView;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren
dup
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
invokespecial com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
return
.limit locals 1
.limit stack 5
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
ifnull L0
aload 1
instanceof com/nd/android/u/bean4xy/DisplayMessage_System
ifne L1
L0:
ldc "CHAT"
ldc "null or not a system message"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L2:
return
L1:
aload 0
aconst_null
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/setVisibility(I)V
aload 0
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_System
putfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/approvalStr Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/displayContent Ljava/lang/String;
astore 8
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getFriendId()J
lstore 4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/messageContentType I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getTimeString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/contentText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/readImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/messageType I
ifne L7
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
lload 4
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
lload 4
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/setFid(J)V
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/contentText Landroid/widget/TextView;
aload 8
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/contentText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L4
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/cause I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L6
L7:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
lstore 6
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupType I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
iload 2
tableswitch 10001
L8
L9
L10
L10
L10
L10
L11
L12
L8
default : L9
L9:
aload 0
bipush 8
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/setVisibility(I)V
return
L12:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
lload 4
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
lload 4
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/setFid(J)V
return
L8:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/group_face I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/clickGroupHeader Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iload 3
lload 6
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupName(IJ)Ljava/lang/String; 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
ldc2_w -1L
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/setFid(J)V
return
L11:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/isRead()Z
ifne L13
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/readImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L13:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/approvalOnClickListener Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System/setOnClickListener(Landroid/view/View$OnClickListener;)V
L10:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
lload 4
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
lload 4
lconst_0
lcmp
ifeq L14
lload 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L15
L14:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/faceImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L16:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/frienddetailonClick Lcom/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren;
lload 4
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/setFid(J)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/causeText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/cause I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L15:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System/nameText Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 4
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L16
.limit locals 9
.limit stack 5
.end method
