.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip
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
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayTitle()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$color/black I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/llContent Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/llContent Landroid/widget/LinearLayout;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/llContent Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 2
aload 2
bipush 17
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 2
iconst_m1
putfield android/widget/LinearLayout$LayoutParams/width I
aload 2
iconst_0
putfield android/widget/LinearLayout$LayoutParams/topMargin I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/chat_app_time_bottom I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 2
aload 2
aload 0
bipush 35
invokevirtual com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/dp2px(I)I
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 2
aload 0
bipush 35
invokevirtual com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/dp2px(I)I
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 2
iconst_m1
putfield android/widget/LinearLayout$LayoutParams/width I
aload 2
bipush 17
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
iconst_5
invokevirtual com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/dp2px(I)I
istore 1
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
iload 1
iload 1
iload 1
iload 1
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$color/white I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/mMessage Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/tvTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/messageTip/TwoLineMessageTip/attachmentContainer Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 3
.limit stack 5
.end method
