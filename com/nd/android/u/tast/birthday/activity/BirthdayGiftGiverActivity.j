.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
.super android/app/Activity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$1
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$2
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$3
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$4
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5
.inner class private GetOnePageGiversTask inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask outer com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
.inner class public RefreshGestureListener inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$RefreshGestureListener outer com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
.inner class private mTask inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask outer com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity

.field private final 'ONE_PAGE_MAX' I

.field private 'btnIndex' I

.field private 'btnMoreWidth' I

.field private 'btn_more' Landroid/widget/Button;

.field private final 'countGivers' I

.field private 'foot_view' Landroid/view/View;

.field private 'header_btn_left' Landroid/widget/Button;

.field private 'header_text_title' Landroid/widget/TextView;

.field private 'isTextSet' Z

.field private 'lv_giver' Landroid/widget/ListView;

.field private 'ly_bless' Landroid/widget/LinearLayout;

.field private 'ly_none' Landroid/widget/LinearLayout;

.field private 'mCurrentLines' I

.field private 'mGD' Landroid/view/GestureDetector;

.field private 'mGetOnePageTask' Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;

.field private 'mGiversList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;"

.field private 'mNewGivers' Ljava/lang/String;

.field private 'mTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTotalGivers' J

.field private 'maxFirstShowLines' I

.field private 'rl_givers' Landroid/widget/RelativeLayout;

.field private 'task' Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask;

.field private 'tvGiversWidth' I

.field private 'tv_blessinfo' Landroid/widget/TextView;

.field private 'tv_givers' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGiversList Ljava/util/List;
aload 0
iconst_3
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/maxFirstShowLines I
aload 0
lconst_0
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mTotalGivers J
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/isTextSet Z
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnIndex I
aload 0
bipush 20
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/countGivers I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
aload 0
bipush 100
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ONE_PAGE_MAX I
aload 0
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tvGiversWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tvGiversWidth I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGetOnePageTask Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;)Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGetOnePageTask Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ly_none Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/maxFirstShowLines I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/setBlessinfo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/foot_view Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnMoreWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnMoreWidth I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btn_more Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Z
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/isTextSet Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/isTextSet Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ly_bless Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/getGiversData()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGiversList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGiversList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)J
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mTotalGivers J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$802(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;J)J
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mTotalGivers J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_btn_left I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/header_btn_left Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_text_title I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/header_text_title Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_blessinfo I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_blessinfo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_givers I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/rl_givers I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/rl_givers Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lv_giver I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/lv_giver Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ly_none I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ly_none Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ly_bless I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ly_bless Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_more I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btn_more Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/foot_view I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/foot_view Landroid/view/View;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
invokevirtual android/widget/TextView/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$1/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btn_more Landroid/widget/Button;
invokevirtual android/widget/Button/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$2/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private getGiversData()V
aload 0
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$1;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/task Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$mTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private setBlessinfo()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/header_text_title Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/tasklib/R$string/birthday_gift_title I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 1
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGiversList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Myblesslist
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getAddtime()J
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/getDate(J)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_blessinfo Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u5e74\u751f\u65e5\uff0c\u4ed6\u4eec\u795d\u798f\u4e86\u4f60"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/ly_bless Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_blessinfo Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_1
invokevirtual java/util/Calendar/get(I)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u5e74\u751f\u65e5\uff0c\u4ed6\u4eec\u795d\u798f\u4e86\u4f60"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 3
.limit stack 4
.end method

.method private setClick()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/header_btn_left Landroid/widget/Button;
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$3
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$3/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btn_more Landroid/widget/Button;
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$4
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$4/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new android/view/GestureDetector
dup
aload 0
new com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$RefreshGestureListener
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$RefreshGestureListener/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGD Landroid/view/GestureDetector;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setLongClickable(Z)V
return
.limit locals 1
.limit stack 7
.end method

.method public changeGivers(Landroid/widget/TextView;IILjava/lang/String;)Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
ldc ""
astore 9
iconst_0
istore 6
iconst_0
istore 8
iconst_0
istore 7
L1:
iload 8
aload 4
invokevirtual java/lang/String/length()I
if_icmpge L2
iload 8
iconst_1
iadd
istore 5
L3:
iload 5
aload 4
invokevirtual java/lang/String/length()I
if_icmpgt L4
aload 1
invokevirtual android/widget/TextView/getPaint()Landroid/text/TextPaint;
aload 4
iload 7
iload 5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual android/text/TextPaint/measureText(Ljava/lang/String;)F
iload 2
i2f
fcmpg
ifge L4
iload 5
iconst_1
iadd
istore 5
goto L3
L4:
iload 5
iconst_1
isub
istore 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
iload 7
iload 8
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
iload 6
istore 5
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/maxFirstShowLines I
iconst_1
isub
if_icmpne L5
iload 8
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
iadd
istore 5
L6:
aload 1
invokevirtual android/widget/TextView/getPaint()Landroid/text/TextPaint;
aload 4
iload 7
iload 5
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual android/text/TextPaint/measureText(Ljava/lang/String;)F
iload 2
iload 3
isub
i2f
fcmpl
ifle L7
iconst_1
istore 6
iload 5
iconst_1
isub
istore 5
goto L6
L7:
iload 5
istore 7
iload 6
ifeq L8
L9:
iload 5
istore 7
aload 4
iload 5
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
isub
iload 5
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
ldc "\u3001"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L8
iload 5
iconst_1
isub
istore 5
goto L9
L8:
aload 0
iload 7
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnIndex I
iload 6
istore 5
L5:
iload 8
istore 7
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
iconst_1
iadd
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
iload 5
istore 6
goto L1
L2:
aload 9
iconst_0
aload 9
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 10
.limit stack 5
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGD Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ifeq L0
aload 1
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
L0:
aload 0
aload 1
invokespecial android/app/Activity/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getDate(J)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
new java/text/SimpleDateFormat
dup
ldc "yyyy"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 3
L0:
aload 3
ldc2_w 1000L
lload 1
lmul
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/text/SimpleDateFormat/format(Ljava/lang/Object;)Ljava/lang/String;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 4
.limit stack 5
.end method

.method public getNewGivers()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getbtnIndex()I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getbtnWidth()I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnMoreWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public gettvWidth()I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tvGiversWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/birthday_giftgiver I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/setContentView(I)V
getstatic com/product/android/business/config/Configuration/MYAPPID I
getstatic com/product/android/business/config/Configuration/GIFTGIVERCODE Ljava/lang/String;
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/ackMessage(ILjava/lang/String;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/findView()V
aload 0
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/setClick()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mGD Landroid/view/GestureDetector;
aload 2
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setGiversText()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mCurrentLines I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/maxFirstShowLines I
if_icmple L0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btn_more Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/btnIndex I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/tv_givers Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/mNewGivers Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 4
.end method
