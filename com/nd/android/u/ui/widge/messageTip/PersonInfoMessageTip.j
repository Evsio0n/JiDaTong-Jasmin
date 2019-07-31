.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip
.super com/nd/android/u/ui/widge/messageTip/MessageTip

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method private buildPersonInfoView()Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$layout/message_tip_person_info I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 1
.limit stack 3
.end method

.method protected configUI()V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/tvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$color/black I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayTitle()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/llContent Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/llContent Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$drawable/chat_bg_psp_say I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
iconst_5
invokevirtual com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/dp2px(I)I
istore 1
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/llContent Landroid/widget/LinearLayout;
iload 1
iload 1
iload 1
iload 1
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/tvContent Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/tvTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
aload 0
invokespecial com/nd/android/u/ui/widge/messageTip/PersonInfoMessageTip/buildPersonInfoView()Landroid/view/View;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 5
.end method
