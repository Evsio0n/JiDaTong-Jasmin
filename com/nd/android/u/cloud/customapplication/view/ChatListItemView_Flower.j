.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4

.field public static final 'FLOWER_DATA_TYPE_ACKNOWLEDGE' I = 1


.field public static final 'FLOWER_DATA_TYPE_AWARD' I = 2


.field private 'btnAcknowledge' Landroid/widget/Button;

.field private 'btnSendFlower' Landroid/widget/Button;

.field private 'contentText' Landroid/widget/TextView;

.field private 'ivIcon' Landroid/widget/ImageView;

.field private 'logoImg' Landroid/widget/ImageView;

.field private 'lvAcknowledge' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;

.field private 'msgimg' Landroid/widget/ImageView;

.field private 'timeText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/getView()V
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
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/getView()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903194
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131624768
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/contentText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/contentText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131624767
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/logoImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624769
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/msgimg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624764
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131624770
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624771
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/lvAcknowledge Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131624772
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/btnAcknowledge Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131624773
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/btnSendFlower Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/contentText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/msgimg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/timeText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/lvAcknowledge Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aconst_null
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/getDisplayContent()Ljava/lang/String;
astore 5
aload 5
astore 1
aload 5
ifnonnull L0
ldc ""
astore 1
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/appId I
getstatic com/product/android/business/config/Configuration/SECRETLOVEAPPID I
if_icmpne L1
aload 1
ifnull L1
aload 1
ldc "@picture"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 2
iconst_m1
if_icmpeq L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/msgimg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L2:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/contentText Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getHtml(Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/timeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 5
aload 5
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/createDate J
ldc2_w 1000L
lmul
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/timeText Landroid/widget/TextView;
aload 5
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
iconst_1
invokestatic com/product/android/utils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/logoImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/appId I
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/appCode Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataUid J
lstore 3
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
iconst_1
if_icmpeq L3
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
iconst_2
if_icmpne L4
lload 3
lconst_0
lcmp
ifeq L4
L3:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
lload 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSysAvatarId(J)I 2
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/ivIcon Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/lvAcknowledge Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/btnAcknowledge Landroid/widget/Button;
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2
dup
aload 0
lload 3
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;J)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/btnSendFlower Landroid/widget/Button;
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3
dup
aload 0
lload 3
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;J)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L4:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
iconst_2
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/contentText Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)V
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/setOnClickListener(Landroid/view/View$OnClickListener;)V
L5:
return
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/msgimg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
.limit locals 6
.limit stack 6
.end method
