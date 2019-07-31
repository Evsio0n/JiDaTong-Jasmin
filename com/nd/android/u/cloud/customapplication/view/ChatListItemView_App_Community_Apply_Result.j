.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.implements android/view/View$OnClickListener

.field public static final 'COMMUNITY_FACE_CODE' I = 16


.field private final 'APPLY_CREATE_COMMUNITY_FAIL' I

.field private final 'APPLY_CREATE_COMMUNITY_SUCCESS' I

.field private final 'APPLY_JOIN_COMMUNITY_FAIL' I

.field private final 'APPLY_JOIN_COMMUNITY_SUCCESS' I

.field private 'applyResult' Landroid/widget/TextView;

.field private 'communityFace' Landroid/widget/ImageView;

.field private 'communityName' Landroid/widget/TextView;

.field private 'itemType' I

.field private 'mAppMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;

.field private 'mContext' Landroid/content/Context;

.field private 'reMessageContent' Landroid/widget/RelativeLayout;

.field private 'toCommunity' Landroid/widget/ImageView;

.field private 'tvTime' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/APPLY_JOIN_COMMUNITY_SUCCESS I
aload 0
iconst_1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/APPLY_JOIN_COMMUNITY_FAIL I
aload 0
iconst_2
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/APPLY_CREATE_COMMUNITY_FAIL I
aload 0
iconst_3
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/APPLY_CREATE_COMMUNITY_SUCCESS I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method private getMessageType()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
ifeq L0
ldc "LIFE_COMMUNITY_APPLY_RESULT"
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
ifne L2
aload 0
iconst_1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
L0:
return
L2:
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
return
L1:
ldc "LIFE_COMMUNITY_CREATE_RESULT"
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
iconst_1
if_icmpne L3
aload 0
iconst_3
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
return
L3:
aload 0
iconst_2
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
return
.limit locals 1
.limit stack 2
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903164
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131624578
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/tvTime Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624589
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/communityFace Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624590
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/communityName Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624591
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/applyResult Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624592
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/toCommunity Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624588
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/reMessageContent Landroid/widget/RelativeLayout;
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624588
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
ifeq L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
iconst_3
if_icmpne L2
L1:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/callOtherGotoCommunityHome(Landroid/content/Context;I)V 2
L0:
return
L2:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
iconst_2
if_icmpne L3
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
i2l
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mContext Landroid/content/Context;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/goToCreateCommunityActivity(JLandroid/content/Context;)V 3
return
L3:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
iconst_1
if_icmpne L0
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/getMessageType()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/tvTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
ifeq L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/itemType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/toCommunity Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
i2l
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/avatarUrl Ljava/lang/String;
bipush 16
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getCommunityOrTeamAvatar(JLjava/lang/String;I)Ljava/lang/String; 4
astore 1
aload 1
ifnull L1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/communityFace Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
aload 2
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/communityName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/applyResult Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/reMessageContent Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 6
.end method
