.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_App
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_App$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_App$2
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_App$3

.field private 'contentText' Landroid/widget/TextView;

.field private 'llDetail' Landroid/widget/LinearLayout;

.field private 'logoImg' Landroid/widget/ImageView;

.field private 'mAppMessage' Lcom/nd/android/u/bean4xy/DisplayMessage_App;

.field private 'mContext' Landroid/content/Context;

.field private 'msgimg' Landroid/widget/ImageView;

.field private 'mtextcontextlv' Landroid/widget/LinearLayout;

.field private 'timeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_App/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mtextcontextlv Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/todo_message_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/todo_message_item_content I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/todo_message_item_face I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_App/logoImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/todo_message_item_img I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_App/msgimg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/todo_message_item_tv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_App/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/textcontextlv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView_App/mtextcontextlv Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llDetail I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView_App/llDetail Landroid/widget/LinearLayout;
aload 0
getstatic com/nd/android/u/chat/R$id/tvDetail I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/findViewById(I)Landroid/view/View;
new com/nd/android/u/ui/widge/ChatListItemView_App$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/llDetail Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_App
putfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/displayContent Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/oriMessage Ljava/lang/String;
ldc "@picture"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/msgimg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/mAppMessage Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/url Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/llDetail Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aconst_null
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 2
invokestatic com/common/android/utils/UrlUtils/isHtml(Ljava/lang/String;)Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getHtml(Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
invokestatic android/text/method/LinkMovementMethod/getInstance()Landroid/text/method/MovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
new com/nd/android/u/ui/widge/ChatListItemView_App$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App$3/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)V
invokevirtual android/widget/TextView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setFocusable(Z)V
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/timeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/timeText Landroid/widget/TextView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTimeString()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/logoImg Landroid/widget/ImageView;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/displayPortrait(Landroid/widget/ImageView;Z)V 2
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/msgimg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
L2:
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_App$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)V
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_App/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App/contentText Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 3
.limit stack 4
.end method
