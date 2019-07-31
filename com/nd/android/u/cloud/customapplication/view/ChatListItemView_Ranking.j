.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.implements com/nd/android/u/controller/innerInterface/IChatListItem

.field private 'contentText' Landroid/widget/TextView;

.field private 'logoImg' Landroid/widget/ImageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;

.field private 'rankContent' Landroid/widget/TextView;

.field private 'rankMessageRL' Landroid/widget/LinearLayout;

.field private 'rankMessageTime' Landroid/widget/TextView;

.field private 'rankTitle' Landroid/widget/TextView;

.field private 'timeText' Landroid/widget/TextView;

.field private 'todoMessageLL' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903813
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131626940
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/contentText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/contentText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131626938
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/logoImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626937
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131624765
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/todoMessageLL Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131627073
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageRL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageRL Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc_w 2131627075
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankTitle Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131627077
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankContent Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
ldc_w 2131627074
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageTime Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131627073
L0
default : L1
L1:
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mContext Landroid/content/Context;
ldc com/nd/android/u/contact/activity/TopRankActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "topType"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/timeText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/textType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageRL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/todoMessageLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/title Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/displayContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/todoMessageLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/rankMessageRL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/contentText Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/displayContent Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getHtml(Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appId I
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appCode Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/logoImg Landroid/widget/ImageView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appId I
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Ranking/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appCode Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/image/SimpleHeadImageLoader/display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method
