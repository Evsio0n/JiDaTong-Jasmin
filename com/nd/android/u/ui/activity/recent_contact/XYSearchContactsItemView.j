.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView
.super android/widget/RelativeLayout
.implements android/view/View$OnClickListener

.field private 'mContactAdd' Landroid/widget/TextView;

.field private 'mContactName' Landroid/widget/TextView;

.field private 'mContactNo' Landroid/widget/TextView;

.field private 'mContactPic' Lcom/nd/android/u/ui/widge/CircleImageView;

.field private 'mContactType' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'mRoot' Landroid/view/View;

.field private 'mSearchResult' Lcom/product/android/commonInterface/contact/LocalSearchResult;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/init()V
return
.limit locals 2
.limit stack 2
.end method

.method private OapGroupType2ChatGroupType(I)I
iload 1
tableswitch 0
L0
L1
L1
L2
L1
default : L3
L3:
iconst_m1
ireturn
L0:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
ireturn
L1:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
ireturn
L2:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method private gotoGroupChatActivity()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "name"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getGroupType()I
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/OapGroupType2ChatGroupType(I)I
istore 1
aload 5
ldc "MESSAGE_TYPE"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
ldc "grouptype"
iload 1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
astore 6
aload 4
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 4
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 6
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 7
.limit stack 5
.end method

.method private gotoGroupInfoActivity()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getGroupType()I
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/OapGroupType2ChatGroupType(I)I
istore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
lstore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L0
aload 4
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
L1:
return
L0:
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L2
aload 4
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L2:
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L1
aload 4
ldc "deptid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
.limit locals 5
.limit stack 4
.end method

.method private gotoPersonChatActivity()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L0
getstatic com/nd/android/u/chat/R$string/chat_to_self I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
astore 1
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "MESSAGE_TYPE"
iconst_0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "fid"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private gotoPersonInfoActivity()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 1
.limit stack 4
.end method

.method private gotoPspChatActivity()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "MESSAGE_TYPE"
iconst_5
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private gotoPspInfoActivity()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
ldc com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private init()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/xy_search_contacts_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/civ_contact_pic I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_contact_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactName Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_contact_no I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactNo Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_contact_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactType Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_contact_additional I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactAdd Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public getContentText(Ljava/lang/String;)Landroid/text/SpannableString;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 1
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getDisplayId()Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mRoot Landroid/view/View;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L1
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoPersonChatActivity()V
L2:
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L3
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoGroupChatActivity()V
return
L3:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L2
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoPspChatActivity()V
return
L0:
aload 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L4
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoPersonInfoActivity()V
return
L4:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L5
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoGroupInfoActivity()V
return
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L2
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/gotoPspInfoActivity()V
return
.limit locals 2
.limit stack 2
.end method

.method public updateContent(Lcom/product/android/commonInterface/contact/LocalSearchResult;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mSearchResult Lcom/product/android/commonInterface/contact/LocalSearchResult;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
getstatic com/nd/android/u/chat/R$drawable/face_default I
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setImageResource(I)V
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactName Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactNo Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getDisplayId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactType Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getTypeName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactAdd Landroid/widget/TextView;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getDescription()Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/getContentText(Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpeq L4
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactNo Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L5
aconst_null
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_1
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getGroupType()I
invokestatic com/product/android/business/headImage/HeadImageLoader/displayGroupImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
goto L1
L5:
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getType()Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
if_acmpne L1
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactPic Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_0
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactAdd Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getDescription()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/XYSearchContactsItemView/mContactNo Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 4
.end method
