.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchUserResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchUserResultActivity$1
.inner class private SearcdFriendTask inner com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask outer com/nd/android/u/contact/activity/SearchUserResultActivity

.field private 'mSearcdFriendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearcdFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'resulList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'resultListView' Landroid/widget/ListView;

.field private 'searchfriendadapter' Lcom/nd/android/u/contact/adapter/SearchUserAdapter;

.field private 'username' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/resultListView Landroid/widget/ListView;
aload 0
new com/nd/android/u/contact/activity/SearchUserResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/resulList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onSearchFailure(Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/searchfriendadapter Lcom/nd/android/u/contact/adapter/SearchUserAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/SearchUserAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/resulList Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SearchUserAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/searchfriendadapter Lcom/nd/android/u/contact/adapter/SearchUserAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/searchfriendadapter Lcom/nd/android/u/contact/adapter/SearchUserAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/searchfriendadapter Lcom/nd/android/u/contact/adapter/SearchUserAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/resulList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SearchUserAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/searchfriendadapter Lcom/nd/android/u/contact/adapter/SearchUserAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchUserAdapter/notifyDataSetChanged()V
goto L1
.limit locals 1
.limit stack 5
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$layout/search_user_result I
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/initComponentValue()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_result_user_list I
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/resultListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/resultListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 3
.end method

.method public final initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "username"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/username Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/username Ljava/lang/String;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/username Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/username Ljava/lang/String;
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/searchFriend()V
aload 0
getstatic com/nd/android/u/contact/R$string/searchresult I
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public final searchFriend()V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchUserResultActivity$SearcdFriendTask/<init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Lcom/nd/android/u/contact/activity/SearchUserResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity/mSearcdFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
