.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/activity/BirthdayActivity
.super android/app/Activity
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayActivity$1
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayActivity$2
.inner class private GetBirthdayUserUserTask inner com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask outer com/nd/android/u/tast/birthday/activity/BirthdayActivity

.field public static final 'REQUEST_CODE_TWEETPROFILE' I = 2424


.field private final 'TIMES' I

.field private 'birthAdapter' Lcom/nd/android/u/tast/birthday/adapter/BirthdayAdapter;

.field private 'gvBirthuser' Lcom/product/android/ui/widget/PagingLoadListView;

.field private 'header_btn_left' Landroid/widget/Button;

.field private 'mListBirthuser' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;>;"

.field private 'mTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mlMiliSeconds' Ljava/lang/Long;

.field private 'mtvDate' Landroid/widget/TextView;

.field private 'mtvLunar' Landroid/widget/TextView;

.field private 'promptTextView' Landroid/widget/TextView;

.field private 'refreshLayout' Landroid/widget/LinearLayout;

.field private 'task' Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask;

.field private 'tv_blesscontent' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mListBirthuser Ljava/util/ArrayList;
aload 0
sipush 1000
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/TIMES I
aload 0
new com/nd/android/u/tast/birthday/activity/BirthdayActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity$2/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/refreshLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/promptTextView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mListBirthuser Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Ljava/lang/Long;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mlMiliSeconds Ljava/lang/Long;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;Ljava/lang/Long;)Ljava/lang/Long;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mlMiliSeconds Ljava/lang/Long;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/tv_blesscontent Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity/parseDate()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity/initWaterFall()V
return
.limit locals 1
.limit stack 1
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_btn_left I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/header_btn_left Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_text_date I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mtvDate Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_text_lunar I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mtvLunar Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_blesscontent I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/tv_blesscontent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/gv_birthday I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/PagingLoadListView
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/gvBirthuser Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_layout_refresh I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/refreshLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_text_prompt I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/promptTextView Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private init()V
aload 0
new com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$1;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity$GetBirthdayUserUserTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private initWaterFall()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/refreshLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/gvBirthuser Lcom/product/android/ui/widget/PagingLoadListView;
iconst_0
invokevirtual com/product/android/ui/widget/PagingLoadListView/setVisibility(I)V
aload 0
new com/nd/android/u/tast/birthday/adapter/BirthdayAdapter
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/adapter/BirthdayAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/birthAdapter Lcom/nd/android/u/tast/birthday/adapter/BirthdayAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/gvBirthuser Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/birthAdapter Lcom/nd/android/u/tast/birthday/adapter/BirthdayAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/gvBirthuser Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mListBirthuser Ljava/util/ArrayList;
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
return
.limit locals 1
.limit stack 4
.end method

.method private parseDate()V
lconst_0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mlMiliSeconds Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lcmp
ifne L0
return
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mlMiliSeconds Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual java/util/Calendar/setTimeInMillis(J)V
new java/text/SimpleDateFormat
dup
aload 0
getstatic com/nd/android/u/tasklib/R$string/month_day_ex I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/getString(I)Ljava/lang/String;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 2
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mtvDate Landroid/widget/TextView;
aload 2
aload 1
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/mtvLunar Landroid/widget/TextView;
aload 1
invokestatic com/common/android/utils/LunarCalendarUtils/ParseDate(Ljava/util/Calendar;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 4
.end method

.method private setClick()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/header_btn_left Landroid/widget/Button;
new com/nd/android/u/tast/birthday/activity/BirthdayActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity$1/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
sipush 2424
if_icmpne L0
aload 3
ifnull L0
aload 3
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 4
aload 3
ldc "blesscount"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/birthAdapter Lcom/nd/android/u/tast/birthday/adapter/BirthdayAdapter;
lload 4
iload 1
invokevirtual com/nd/android/u/tast/birthday/adapter/BirthdayAdapter/refreshItem(JI)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/birthday_main I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity/findView()V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity/setClick()V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayActivity/init()V
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onEventMainThread(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L5:
return
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "task_key_bless_fid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lstore 3
aload 1
ldc "task_key_bless_count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
L1:
lload 3
lconst_0
lcmp
ifle L5
iload 2
ifle L5
L3:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayActivity/birthAdapter Lcom/nd/android/u/tast/birthday/adapter/BirthdayAdapter;
lload 3
iload 2
invokevirtual com/nd/android/u/tast/birthday/adapter/BirthdayAdapter/refreshItem(JI)V
L4:
return
L2:
astore 1
return
.limit locals 5
.limit stack 4
.end method

.method protected onPause()V
aload 0
invokespecial android/app/Activity/onPause()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial android/app/Activity/onStart()V
return
.limit locals 1
.limit stack 1
.end method
