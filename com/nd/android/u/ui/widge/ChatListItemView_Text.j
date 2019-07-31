.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Text
.super android/widget/TextView
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Text$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Text$2

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mlistener' Landroid/view/View$OnLongClickListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Text$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Text/mlistener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Text/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Text$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Text/mlistener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Text/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Text/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
ldc ""
astore 2
L0:
aload 0
bipush 19
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setGravity(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setVisibility(I)V
aload 0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setTextSize(F)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mContext Landroid/content/Context;
aload 2
iconst_1
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/changeToSpan(Landroid/content/Context;Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setText(Ljava/lang/CharSequence;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L1
aload 0
iconst_m1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setTextColor(I)V
L2:
aload 2
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isHtml(Ljava/lang/String;)Z
ifne L3
aload 2
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isPhone(Ljava/lang/String;)Z
ifeq L4
L3:
aload 0
new com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text/mlistener Landroid/view/View$OnLongClickListener;
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/<init>(Landroid/view/View$OnLongClickListener;)V
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Text$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)V
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
L4:
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 1
aload 1
ifnonnull L5
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
L6:
aload 1
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setFocusable(Z)V
return
L1:
aload 0
ldc_w -16777216
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Text/setTextColor(I)V
goto L2
L5:
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/width I
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/height I
goto L6
.limit locals 4
.limit stack 4
.end method
