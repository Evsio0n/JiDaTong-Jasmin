.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2
.inner class private GetMorFriendsListTask inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask outer com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity

.field public static final 'COUNT' I = 20


.field private 'addFollowRequestCode' I

.field private 'footView' Landroid/view/View;

.field private 'isFollow' I

.field private 'isNotFollow' I

.field private 'mAdapter' Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;

.field private 'mCollegeCode' Ljava/lang/String;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;"

.field private 'mGender' I

.field private 'mGetMoreTask' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;

.field private 'mGrade' Ljava/lang/String;

.field private 'mHasMoreData' Z

.field private 'mHighSchoolCode' Ljava/lang/String;

.field private 'mHomeTownCode' Ljava/lang/String;

.field private 'mLvSearchResult' Landroid/widget/ListView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHasMoreData Z
aload 0
iconst_2
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/addFollowRequestCode I
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/isFollow I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/isNotFollow I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/addFollowRequestCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHighSchoolCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHasMoreData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHasMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGetMoreTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;)Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGetMoreTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGender I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHomeTownCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGrade Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mCollegeCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624195
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
ldc_w 2130903440
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/footView Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/footView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/titleText Landroid/widget/TextView;
ldc_w 2131493666
invokevirtual android/widget/TextView/setText(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "select_result_list"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/List
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
ifnonnull L0
aload 0
ldc_w 2131624093
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHasMoreData Z
L1:
aload 0
aload 1
ldc "select_gender"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGender I
aload 0
aload 1
ldc "select_hometown"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHomeTownCode Ljava/lang/String;
aload 0
aload 1
ldc "select_grade"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGrade Ljava/lang/String;
aload 0
aload 1
ldc "select_college"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mCollegeCode Ljava/lang/String;
aload 0
aload 1
ldc "select_highschool"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHighSchoolCode Ljava/lang/String;
aload 0
new com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
invokespecial com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
new com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
invokevirtual com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
new com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
L0:
aload 0
ldc_w 2131624093
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L1
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mHasMoreData Z
goto L1
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/addFollowRequestCode I
iload 1
if_icmpne L0
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 3
aload 3
ldc "following"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
istore 4
aload 3
ldc "uid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 5
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 3
aload 3
ifnull L1
iload 4
ifeq L2
aload 3
ldc_w 2130837804
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
ldc_w 2131492978
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
lload 5
lcmp
ifne L4
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/isFollow I
invokevirtual com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/setIsFollow(I)V
L1:
return
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
ldc_w 2130837849
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
ldc_w 2131493340
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L5:
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
lload 5
lcmp
ifne L6
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/isNotFollow I
invokevirtual com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/setIsFollow(I)V
return
L6:
iload 1
iconst_1
iadd
istore 1
goto L5
L0:
iconst_1
iload 1
if_icmpne L1
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "friend"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mLvSearchResult Landroid/widget/ListView;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 7
ifnull L1
aload 7
ldc_w 2130837804
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 7
aload 0
ldc_w 2131492978
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L7:
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifne L8
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/isFollow I
invokevirtual com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/setIsFollow(I)V
return
L8:
iload 1
iconst_1
iadd
istore 1
goto L7
.limit locals 8
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903070
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGetMoreTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGetMoreTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/mGetMoreTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method
