.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetListActivity
.super com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListActivity$1
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity/TweetListActivity

.field private 'actionButton' Landroid/widget/Button;

.field private 'actionTv' Landroid/widget/TextView;

.field private 'imgWeatherIcon' Landroid/widget/ImageView;

.field private 'llWeather' Landroid/widget/LinearLayout;

.field private 'mAvatar' Landroid/widget/ImageView;

.field private 'mCover' Landroid/widget/ImageView;

.field private 'mName' Landroid/widget/TextView;

.field private 'mUpdatePersonInfoReceiver' Landroid/content/BroadcastReceiver;

.field private 'txtWeather' Landroid/widget/TextView;

.field private 'txtWeatherTemperature' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/<init>()V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListActivity/initHeaderView(Lcom/product/android/commonInterface/contact/OapUser;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionButton Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/llWeather Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mCover Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/txtWeather Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/imgWeatherIcon Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/txtWeatherTemperature Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initHeaderView(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/my_avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mName Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mName Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method

.method public clearOldAccountUI()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/clearOldAccountUI()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mAvatar Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/face_default I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mName Landroid/widget/TextView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionButton Landroid/widget/Button;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionButton Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setClickable(Z)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionTv Landroid/widget/TextView;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionTv Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
return
.limit locals 1
.limit stack 2
.end method

.method protected initData(Z)V
new com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity$1;)V
iconst_0
anewarray java/lang/Long
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initData(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/ibBugFeedBack I
if_icmpne L0
aload 0
ldc2_w 10003342L
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/openChat(Landroid/app/Activity;J)V
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/my_avatar I
if_icmpne L1
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
L1:
iload 2
getstatic com/android/u/weibo/R$id/profile_action_button I
if_icmpne L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 1003
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/onClick(Landroid/view/View;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
aload 0
getstatic com/android/u/weibo/R$layout/weibo_list I
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/weibo_list_layout_id I
aload 0
getstatic com/android/u/weibo/R$layout/weibo_list_headers I
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/weibo_list_header_layout_id I
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$id/ibBugFeedBack I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/background_image I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mCover Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/profile_item_stub I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
pop
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/heightPixels I
iconst_3
idiv
i2f
ldc_w 34.0F
aload 1
getfield android/util/DisplayMetrics/density F
fmul
fsub
f2i
istore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/place_holder I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iload 2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getstatic com/android/u/weibo/R$id/profile_item I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/findViewById(I)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$id/profile_action_button I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionButton Landroid/widget/Button;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/profile_action_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/actionTv Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/weather_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/llWeather Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/weather I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/txtWeather Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/txtWeather Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/weather_wait_uploading I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/weather_icon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/imgWeatherIcon Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/weather_temperature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/txtWeatherTemperature Landroid/widget/TextView;
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/onDestroy()V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mUpdatePersonInfoReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public refreshWhenSwitchUser()V
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/initData(Z)V
return
.limit locals 1
.limit stack 2
.end method
