.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_MultiImage
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2

.field 'i' I

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/initView(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addTextView(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_item_text I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 2
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mContext Landroid/content/Context;
aload 1
iconst_1
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/changeToSpan(Landroid/content/Context;Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokestatic com/common/android/utils/UrlUtils/isHtml(Ljava/lang/String;)Z
ifeq L0
aload 2
new com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod
dup
new com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)V
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/<init>(Landroid/view/View$OnLongClickListener;)V
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
new com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)V
invokevirtual android/widget/TextView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
L0:
aload 2
iconst_1
invokevirtual android/widget/TextView/setFocusable(Z)V
aload 0
aload 2
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addView(Landroid/view/View;)V
return
.limit locals 3
.limit stack 6
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mContext Landroid/content/Context;
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/setOrientation(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/removeAllViews()V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
ldc "error text"
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addTextView(Ljava/lang/String;)V
L2:
return
L1:
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/i I
aload 1
invokevirtual java/util/ArrayList/size()I
istore 2
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/i I
iload 2
if_icmpge L2
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/i I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 4
aload 4
instanceof java/lang/String
ifeq L4
aload 0
aload 4
checkcast java/lang/String
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addTextView(Ljava/lang/String;)V
L5:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/i I
iconst_1
iadd
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/i I
goto L3
L4:
aload 4
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L5
aload 4
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 5
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 3
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
iconst_2
invokevirtual com/nd/android/u/controller/factory/ShareFileFactory/getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 5
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
ldc ""
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 3
astore 6
aload 5
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 257
if_icmpne L6
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L7:
new com/nd/android/u/ui/widge/ChatListItemView_Image
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage/mContext Landroid/content/Context;
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/<init>(Landroid/content/Context;)V
astore 4
aload 4
aload 3
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 4
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addView(Landroid/view/View;)V
goto L5
L6:
aload 3
aload 6
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
goto L7
.limit locals 7
.limit stack 4
.end method
