.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/messageTip/SignatureMessageTip
.super com/nd/android/u/ui/widge/messageTip/MessageTip

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/messageTip/MessageTip/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected configUI()V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayTitle()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/bt_text_enable_click I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/llContent Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
bipush 10
invokevirtual com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/dp2px(I)I
istore 1
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/llContent Landroid/widget/LinearLayout;
iload 1
iload 1
iload 1
iload 1
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvContent Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
new java/util/Date
dup
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getCreateDate()J 0
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
iconst_3
invokestatic com/nd/android/u/chatUiUtils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/tvTime Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/SignatureMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 3
.limit stack 6
.end method
