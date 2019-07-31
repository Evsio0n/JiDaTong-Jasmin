.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/messageTip/MessageTip
.super android/widget/FrameLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/messageTip/MessageTip$1
.inner class inner com/nd/android/u/ui/widge/messageTip/MessageTip$2

.field protected 'attachmentContainer' Landroid/widget/RelativeLayout;

.field protected 'llContent' Landroid/widget/LinearLayout;

.field protected 'mContentView' Landroid/view/View;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mMessage' Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;

.field private 'mOnClickListener' Landroid/view/View$OnClickListener;

.field private 'mOnLongClickListener' Landroid/view/View$OnLongClickListener;

.field protected 'tvContent' Landroid/widget/TextView;

.field protected 'tvTime' Landroid/widget/TextView;

.field protected 'tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/messageTip/MessageTip$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip$1/<init>(Lcom/nd/android/u/ui/widge/messageTip/MessageTip;)V
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/messageTip/MessageTip$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip$2/<init>(Lcom/nd/android/u/ui/widge/messageTip/MessageTip;)V
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnLongClickListener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/inflate()V
return
.limit locals 2
.limit stack 4
.end method

.method private inflate()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$layout/message_tip I
aload 0
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/llContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/llContent Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/attachmentContainer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/attachmentContainer Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvContent Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvTime I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvTime Landroid/widget/TextView;
aload 0
ldc_w 16777215
invokevirtual com/nd/android/u/ui/widge/messageTip/MessageTip/setBackgroundColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnLongClickListener Landroid/view/View$OnLongClickListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected configUI()V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$color/white I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayTitle()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/chat_app_time_bottom I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/tvContent Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
iconst_1
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/llContent Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected dp2px(I)I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContext Landroid/content/Context;
iload 1
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnClickListener Landroid/view/View$OnClickListener;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
instanceof com/nd/android/u/bean4xy/DisplayMessage_Group
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContext Landroid/content/Context;
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_Group
invokestatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessageFactory/getGroupDynamicMessage(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
L1:
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/prepareMessage()Z 0
pop
aload 0
invokevirtual com/nd/android/u/ui/widge/messageTip/MessageTip/configUI()V
return
L0:
aload 1
instanceof com/nd/android/u/bean4xy/DisplayMessage_Person
ifeq L1
aload 0
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContext Landroid/content/Context;
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_Person
invokestatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessageFactory/getPersonDynamicMessage(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
goto L1
.limit locals 2
.limit stack 3
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnLongClickListener Landroid/view/View$OnLongClickListener;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mContentView Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/MessageTip/mOnLongClickListener Landroid/view/View$OnLongClickListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
