.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/HiddenLoveManageActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements com/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack
.inner class inner com/nd/android/u/contact/activity/HiddenLoveManageActivity$1
.inner class private DelHiddenLove inner com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove outer com/nd/android/u/contact/activity/HiddenLoveManageActivity
.inner class public GetInfoTask inner com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask outer com/nd/android/u/contact/activity/HiddenLoveManageActivity

.field private 'content' Landroid/view/View;

.field private 'getInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'getInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'hiddenMeCount' I

.field private 'load' Landroid/view/View;

.field private 'loveInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;"

.field private 'lvContent' Landroid/widget/ListView;

.field private 'mAdapter' Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;

.field private 'tvNum' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
aload 0
new com/nd/android/u/contact/activity/HiddenLoveManageActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity$1/<init>(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)V
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity/updateView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/load Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/content Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getDataFromNet(Z)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/load Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
new com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity$GetInfoTask/<init>(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)V
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "onlyNum"
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method private parseInfo(Landroid/os/Bundle;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnull L3
aload 0
aload 1
ldc "infos"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
aload 0
aload 1
ldc "hiddenMeCount"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
aload 0
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity/updateView()V
return
L3:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/getIntent()Landroid/content/Intent;
ldc "hasData"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 2
iload 2
ifeq L1
L0:
aload 0
new org/json/JSONObject
dup
aload 0
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/getIntent()Landroid/content/Intent;
ldc "loveInfo"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity/parseJson(Lorg/json/JSONObject;)V
L1:
aload 0
iload 2
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity/getDataFromNet(Z)V
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 5
.end method

.method private parseJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
L0:
aload 1
ldc "info"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
new com/nd/android/u/contact/util/HiddenLoveParser
dup
invokespecial com/nd/android/u/contact/util/HiddenLoveParser/<init>()V
astore 3
L1:
iconst_0
istore 2
L3:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L5
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
aload 3
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/util/HiddenLoveParser/parse(Lorg/json/JSONObject;)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L5:
return
.limit locals 4
.limit stack 4
.end method

.method private updateView()V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/load Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/content Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/lvContent Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/mAdapter Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
ifnonnull L1
aload 0
new com/nd/android/u/contact/adapter/HiddenLoveAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
aload 0
invokespecial com/nd/android/u/contact/adapter/HiddenLoveAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;)V
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/mAdapter Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/lvContent Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/mAdapter Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/lvContent Landroid/widget/ListView;
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/setListViewHeight(Landroid/widget/ListView;)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
ifgt L4
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/tvNum Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/mAdapter Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/adapter/HiddenLoveAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/mAdapter Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
invokevirtual com/nd/android/u/contact/adapter/HiddenLoveAdapter/notifyDataSetChanged()V
goto L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/lvContent Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/tvNum Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/tvNum Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/hidden_love_manage I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 6
.end method

.method public final delHiddenLove(Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)V
new com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove
dup
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/wait_del_hidden_love I
aload 1
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/<init>(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;Landroid/content/Context;ILcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/contact/R$id/ivRule I
if_icmpne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/HiddenLoveRuleActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/ivBack I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/finish()V
return
.limit locals 3
.limit stack 5
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_hidden_love_manage I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/setContentView(I)V
L1:
aload 0
getstatic com/nd/android/u/contact/R$id/ivBack I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/contact/R$id/ivRule I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lvContent I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/lvContent Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvNum I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/tvNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/load I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/load Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/content I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/content Landroid/view/View;
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/HiddenLoveManageActivity/parseInfo(Landroid/os/Bundle;)V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/hidden_love_manage I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 3
.end method

.method protected final onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/getInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "infos"
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/loveInfos Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "hiddenMeCount"
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity/hiddenMeCount I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public final toProfile(Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)V
aload 0
aload 1
getfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
