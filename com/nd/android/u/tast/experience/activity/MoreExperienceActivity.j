.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/activity/MoreExperienceActivity
.super android/app/Activity
.inner class inner com/nd/android/u/tast/experience/activity/MoreExperienceActivity$1
.inner class inner com/nd/android/u/tast/experience/activity/MoreExperienceActivity$2

.field private 'handler' Landroid/os/Handler;

.field private 'mAdapter' Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;

.field private 'mListView' Landroid/widget/ListView;

.field private 'mPortraitLevel' Lcom/nd/android/u/tast/experience/view/PortraitLevel;

.field private 'mProgressBar' Landroid/widget/ProgressBar;

.field private 'mTip' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/nd/android/u/tast/experience/activity/MoreExperienceActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/MoreExperienceActivity$2/<init>(Lcom/nd/android/u/tast/experience/activity/MoreExperienceActivity;)V
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/experience/activity/MoreExperienceActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/experience/activity/MoreExperienceActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/experience/activity/MoreExperienceActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L6 to L7 using L5
.catch org/json/JSONException from L8 to L9 using L5
.catch org/json/JSONException from L10 to L11 using L5
.catch org/json/JSONException from L11 to L12 using L5
.catch org/json/JSONException from L13 to L14 using L5
.catch org/json/JSONException from L15 to L16 using L5
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/more_experience I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/setContentView(I)V
aload 1
ifnull L17
aload 1
ldc "OAP_DATA"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
astore 1
aload 1
instanceof com/product/android/commonInterface/task/OapScore
ifeq L17
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
aload 1
checkcast com/product/android/commonInterface/task/OapScore
putfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
L17:
aload 0
getstatic com/nd/android/u/tasklib/R$id/title I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/android/u/tasklib/R$string/header_morepoints_title I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/pl I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/experience/view/PortraitLevel
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mPortraitLevel Lcom/nd/android/u/tast/experience/view/PortraitLevel;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/progressBar I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tip I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lv I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
aload 0
new com/nd/android/u/tast/experience/adapter/MoreExperienceAdapter
dup
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/root I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
invokespecial com/nd/android/u/tast/experience/adapter/MoreExperienceAdapter/<init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ListView;)V
putfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moreexpdata"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
ifnull L18
aload 5
invokevirtual java/lang/String/length()I
ifle L18
aconst_null
astore 1
L0:
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
L1:
aload 5
astore 1
L19:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 1
ifnull L20
L3:
aload 1
ldc "items"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
L4:
iconst_0
istore 2
L21:
iload 2
iload 3
if_icmpge L20
L6:
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
aload 6
ldc "isopen"
iconst_2
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
istore 4
L7:
iload 4
iconst_1
if_icmpeq L8
L22:
iload 2
iconst_1
iadd
istore 2
goto L21
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L19
L8:
new com/nd/android/u/tast/experience/bean/MoreExperienceItem
dup
invokespecial com/nd/android/u/tast/experience/bean/MoreExperienceItem/<init>()V
astore 7
aload 7
aload 6
ldc "itemname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
aload 7
aload 6
ldc "condition"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setCondition(Ljava/lang/String;)V
aload 7
aload 6
ldc "exp"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setExp(I)V
aload 7
aload 6
ldc "money"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setMoney(I)V
aload 7
aload 6
ldc "flower"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setFlower(I)V
aload 6
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 4
L9:
iload 4
iconst_1
if_icmpne L23
L10:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FINISH Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L11:
aload 7
aload 6
ldc "itemcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemCode(Ljava/lang/String;)V
aload 7
aload 6
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setUrl(Ljava/lang/String;)V
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
goto L22
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L20:
aload 5
invokeinterface java/util/List/isEmpty()Z 0
ifne L18
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;
aload 5
invokevirtual com/nd/android/u/tast/experience/adapter/MoreExperienceAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
invokestatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
ifnull L24
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L24:
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mTip Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
L18:
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_left I
invokevirtual com/nd/android/u/tast/experience/activity/MoreExperienceActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/tast/experience/activity/MoreExperienceActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/MoreExperienceActivity$1/<init>(Lcom/nd/android/u/tast/experience/activity/MoreExperienceActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L23:
iload 4
iconst_2
if_icmpne L15
L13:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FAIL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L14:
goto L11
L15:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/NORMAL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L16:
goto L11
.limit locals 8
.limit stack 6
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;
aconst_null
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/handler Landroid/os/Handler;
invokestatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/initMoreExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;Lcom/nd/android/u/tast/experience/view/FullAttendanceListener;Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/MoreExperienceActivity/mPortraitLevel Lcom/nd/android/u/tast/experience/view/PortraitLevel;
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/updateUI()V
return
.limit locals 1
.limit stack 5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "OAP_DATA"
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 3
.end method
