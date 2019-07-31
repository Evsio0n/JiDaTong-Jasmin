.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/BlackListActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/BlackListActivity$1
.inner class private DelBlacklistTask inner com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask outer com/nd/android/u/contact/activity/BlackListActivity

.field protected static final 'TAG' Ljava/lang/String; = "BlackListActivity"

.field private 'blackList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"

.field private 'blacklistadapter' Lcom/nd/android/u/contact/adapter/BlackListAdapter;

.field private 'lvContent' Landroid/widget/ListView;

.field private 'mDelBlackListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mdelBlacklistTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mdialog' Landroid/app/ProgressDialog;

.field private 'noData' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
new com/nd/android/u/contact/activity/BlackListActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/BlackListActivity$1/<init>(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
putfield com/nd/android/u/contact/activity/BlackListActivity/mDelBlackListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/BlackListActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/BlackListActivity/updateView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/BlackListActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/BlackListActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/BlackListActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private doBack()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
ldc "blackList"
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendBlackListBroadCast(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/finish()V
return
.limit locals 1
.limit stack 3
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/BlackListActivity/mdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private updateView()V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
invokevirtual com/nd/android/u/contact/adapter/BlackListAdapter/notifyDataSetChanged()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/lvContent Landroid/widget/ListView;
iconst_4
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/noData Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/lvContent Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/noData Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
ifnonnull L3
aload 0
new com/nd/android/u/contact/adapter/BlackListAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
invokespecial com/nd/android/u/contact/adapter/BlackListAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/lvContent Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/adapter/BlackListAdapter/setVisitorsList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/blacklistadapter Lcom/nd/android/u/contact/adapter/BlackListAdapter;
invokevirtual com/nd/android/u/contact/adapter/BlackListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 5
.end method

.method public final delBlackList(JI)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask/<init>(Lcom/nd/android/u/contact/activity/BlackListActivity;Lcom/nd/android/u/contact/activity/BlackListActivity$1;)V
putfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mDelBlackListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 4
aload 4
ldc "fid"
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 4
ldc "position"
iload 3
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 4
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 5
.limit stack 5
.end method

.method public getBlackListByDB()V
aload 0
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/getBlackList(J)Ljava/util/ArrayList; 2
putfield com/nd/android/u/contact/activity/BlackListActivity/blackList Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/myblacklist I
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/setActivityTitle(Ljava/lang/String;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvNoData I
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/BlackListActivity/noData Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/visitor_list I
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/BlackListActivity/lvContent Landroid/widget/ListView;
aload 0
invokespecial com/nd/android/u/contact/activity/BlackListActivity/updateView()V
return
.limit locals 1
.limit stack 3
.end method

.method protected final leftBtnHandle()V
aload 0
invokespecial com/nd/android/u/contact/activity/BlackListActivity/doBack()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_activity_blacklist I
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/setContentView(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/getBlackListByDB()V
aload 0
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/initEvent()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_blacklist I
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokespecial com/nd/android/u/contact/activity/BlackListActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/HeaderActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public removeFormBlacklist(Landroid/view/View;)V
aload 1
getstatic com/nd/android/u/contact/R$id/tag_first I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 1
getstatic com/nd/android/u/contact/R$id/tag_second I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
ldc "BlackListActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " position"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
lload 3
iload 2
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/delBlackList(JI)V
return
.limit locals 5
.limit stack 4
.end method
