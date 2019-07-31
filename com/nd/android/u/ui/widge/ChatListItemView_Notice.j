.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Notice
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem

.field private 'contentText' Landroid/widget/TextView;

.field private 'logoImg' Landroid/widget/ImageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'timeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Notice/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Notice/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/headline_msg_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/headline_msg_item_content I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Notice/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Notice/contentText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/headline_msg_item_face I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Notice/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_Notice/logoImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/headline_msg_item_tv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Notice/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Notice/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/contentText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
ifnull L0
aload 1
instanceof com/nd/android/u/bean4xy/DisplayMessage_Group
ifne L1
L0:
ldc "CHAT"
ldc "null or not a group message"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L1:
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Notice/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_Group
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/oriMessage Ljava/lang/String;
astore 3
aload 3
astore 2
aload 3
ldc "DB30DF15-01F5-4464-B701-3026D7A24581"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L2
aload 3
ldc "DB30DF15-01F5-4464-B701-3026D7A24581"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_1
aaload
astore 2
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/contentText Landroid/widget/TextView;
aload 2
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/timeText Landroid/widget/TextView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTimeString()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Notice/logoImg Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/system_msg I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 4
.limit stack 2
.end method
