.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Files
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Files$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Files$2

.field private 'listener' Landroid/view/View$OnClickListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mListener' Landroid/view/View$OnLongClickListener;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'tvFileState' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Files$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Files/mListener Landroid/view/View$OnLongClickListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Files$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Files/listener Landroid/view/View$OnClickListener;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)V
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/openGroupFile()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;Ljava/io/File;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/openFile(Ljava/io/File;)V
return
.limit locals 2
.limit stack 2
.end method

.method private getSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
aload 1
aload 2
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
iload 3
aload 2
invokevirtual java/lang/String/length()I
iadd
istore 4
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 2
iload 3
iflt L0
aload 1
invokevirtual java/lang/String/length()I
iload 4
if_icmpge L1
L0:
aload 2
areturn
L1:
aload 2
new android/text/style/ForegroundColorSpan
dup
ldc_w -16776961
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iload 3
iload 4
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
new android/text/style/UnderlineSpan
dup
invokespecial android/text/style/UnderlineSpan/<init>()V
iload 3
iload 4
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 1
bipush 10
invokevirtual java/lang/String/indexOf(I)I
istore 3
iload 3
ifle L0
aload 1
invokevirtual java/lang/String/length()I
istore 4
aload 2
new android/text/style/AbsoluteSizeSpan
dup
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
f2d
ldc2_w 1.2D
dmul
d2i
iconst_1
invokespecial android/text/style/AbsoluteSizeSpan/<init>(IZ)V
iload 3
iload 4
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
new android/text/style/AbsoluteSizeSpan
dup
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
f2i
iconst_1
invokespecial android/text/style/AbsoluteSizeSpan/<init>(IZ)V
iconst_0
iload 3
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
areturn
.limit locals 5
.limit stack 7
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_item_text I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvDownFile I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Files/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/listener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mListener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/TextView/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method private openFile(Ljava/io/File;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
.catch java/lang/IllegalArgumentException from L3 to L4 using L5
.catch java/lang/IllegalStateException from L3 to L4 using L6
.catch java/io/IOException from L3 to L4 using L7
new com/nd/teamfile/sdk/type/FileType
dup
aload 1
invokespecial com/nd/teamfile/sdk/type/FileType/<init>(Ljava/io/File;)V
invokevirtual com/nd/teamfile/sdk/type/FileType/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L8
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 1
getstatic com/nd/android/u/chat/R$string/chat_unknow_apk I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L8:
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
ldc ".amr"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L9
L3:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
L4:
return
L5:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
return
L6:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
return
L7:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
L9:
getstatic com/nd/android/u/chat/R$string/chat_unknow_apk I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 3
.end method

.method private openGroupFile()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
astore 4
aload 4
getfield ims/bean/NDMessage/groupId Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
lstore 1
aload 3
ldc "gid"
lload 1
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
ldc "category"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getShareFileCategory(J)I 2
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
ldc "ownerid"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 4
getfield ims/bean/NDMessage/groupType I
lload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupOwnerId(IJ)J 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
ldc com/nd/teamfile/ui/FileListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 6
.end method

.method private showGroupFile(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc ""
astore 4
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getExtraFlag()I
tableswitch 3
L0
L1
L2
L3
default : L2
L2:
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_receive_file_group I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
L3:
aload 4
areturn
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_send_file_fail I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_sending_file_group I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_send_file_group I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 6
.end method

.method private showUserFile(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
tableswitch -1
L0
L1
L2
L3
L4
L3
L5
L6
L7
L8
default : L5
L5:
ldc ""
areturn
L0:
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/isFromSelf()Z
ifeq L9
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/clientservicefile_chat I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L9:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_receive_file I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L4:
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProgress()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_prepare_file I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L10:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_sending_file I
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProgress()Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_upload_success I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_send_file_fail I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_send_file_success I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_receiveing_file I
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProgress()Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L8:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_receive_file_fail I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
L7:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_receive_file_finish I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 6
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Files/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getFileSize()J 0
l2d
iconst_2
invokestatic com/common/android/utils/FormatUtils/formatNumber(DI)Ljava/lang/String;
astore 4
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Files/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getFileName()Ljava/lang/String; 0
astore 3
aload 3
astore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "unknow file"
astore 2
L0:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/isGroup()Z 0
ifeq L2
aload 0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage
aload 2
aload 4
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/showGroupFile(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L3:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/getSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files/tvFileState Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 2
invokestatic com/common/android/utils/FileUtils/getFilename(Ljava/lang/String;)Ljava/lang/String;
astore 2
goto L0
L2:
aload 0
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage
aload 2
aload 4
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Files/showUserFile(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
goto L3
.limit locals 5
.limit stack 4
.end method
