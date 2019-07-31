.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.implements android/view/View$OnClickListener

.field public static final 'TEAM_FACE_CODE' I = 8


.field private 'dispayContent' Landroid/widget/TextView;

.field private 'itemType' I

.field private 'mAppMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;

.field private 'mContext' Landroid/content/Context;

.field private 'reMessageContent' Landroid/widget/RelativeLayout;

.field private 'teamFace' Landroid/widget/ImageView;

.field private 'teamName' Landroid/widget/TextView;

.field private 'toTeam' Landroid/widget/ImageView;

.field private 'tvTime' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903164
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131624578
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/tvTime Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624589
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/teamFace Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624590
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/teamName Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624591
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/dispayContent Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624592
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/toTeam Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624588
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/reMessageContent Landroid/widget/RelativeLayout;
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/itemType I
iconst_1
if_icmpne L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamId I
i2l
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/callOtherGotoTeamHome(Landroid/content/Context;J)V 3
return
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamId I
i2l
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mContext Landroid/content/Context;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/goToCreateTeamActivity(JLandroid/content/Context;)V 3
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/approvalAction I
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/itemType I
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/tvTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamId I
i2l
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/avatar Ljava/lang/String;
bipush 8
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getCommunityOrTeamAvatar(JLjava/lang/String;I)Ljava/lang/String; 4
astore 1
aload 1
ifnull L0
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/teamFace Landroid/widget/ImageView;
iconst_0
iconst_0
invokestatic com/product/android/business/headImage/HeadImageLoader/displayGroupImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/teamName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/dispayContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Team;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/displayContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Team_Approval/reMessageContent Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 5
.end method
