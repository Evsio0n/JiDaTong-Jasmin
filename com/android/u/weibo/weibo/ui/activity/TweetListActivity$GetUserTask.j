.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Long;Ljava/lang/Object;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;>;"
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity/TweetListActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L3 to L4 using L5
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/synGetOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 1
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserReceiveFlower(J)I
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mReceiveNum I
L1:
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mReceiveNum I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
ldc "101230101"
invokestatic com/android/u/weibo/weibo/utils/Weather/syncGetWeather(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
astore 2
aload 2
ifnull L6
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
L7:
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/toTastGetData()Ljava/util/List;
astore 2
aload 2
ifnull L3
aload 2
invokeinterface java/util/List/size()I 0
ifle L3
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
L3:
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getWeiboMsgUnreadCount()Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
astore 1
L4:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
L6:
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
new com/android/u/weibo/weibo/utils/Weather
dup
invokespecial com/android/u/weibo/weibo/utils/Weather/<init>()V
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
goto L7
L5:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/initUnreadCountView(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
aload 1
iconst_0
aaload
astore 2
aload 2
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 2
checkcast com/product/android/commonInterface/contact/OapUser
putfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;Lcom/product/android/commonInterface/contact/OapUser;)V
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
L0:
aload 2
instanceof java/lang/Integer
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity/mReceiveNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L1
L2:
aload 2
instanceof com/android/u/weibo/weibo/utils/Weather
ifeq L3
aload 2
checkcast com/android/u/weibo/weibo/utils/Weather
astore 2
aload 2
ifnull L4
aload 2
invokevirtual com/android/u/weibo/weibo/utils/Weather/getForecastWeather()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/LinearLayout;
getstatic com/android/u/weibo/R$drawable/weather_txt_bg I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/ImageView;
aload 2
invokevirtual com/android/u/weibo/weibo/utils/Weather/getCoverResourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 2
invokevirtual com/android/u/weibo/weibo/utils/Weather/getForecastWeather()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/ImageView;
aload 2
invokevirtual com/android/u/weibo/weibo/utils/Weather/getWeatherResourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
aload 2
invokevirtual com/android/u/weibo/weibo/utils/Weather/getForecastTemp()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;)Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/weather_uplading_fail I
invokevirtual android/widget/TextView/setText(I)V
goto L1
L3:
aload 2
instanceof java/util/List
ifeq L1
aload 2
checkcast java/util/List
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListActivity;
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListActivity/updateScrollDoubleLayout(Ljava/util/List;)V
goto L1
.limit locals 3
.limit stack 2
.end method
