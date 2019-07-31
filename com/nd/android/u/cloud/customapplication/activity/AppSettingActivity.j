.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/activity/AppSettingActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1
.inner class inner com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2

.field private static final 'TAG' Ljava/lang/String; = "AppSettingActivity"

.field private 'btn' Landroid/widget/Button;

.field private 'lvApplist' Landroid/widget/ListView;

.field private 'mAppSettingAdapter' Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;

.field private 'mAppid' I

.field private 'mAppname' Ljava/lang/String;

.field private 'mCode' Ljava/lang/String;

.field private 'mResulList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"

.field private 'mTitle' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
aconst_null
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mResulList Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/switchRemindOption(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private switchRemindOption(Z)V
aload 0
new com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/<init>(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;Z)V
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
iconst_0
istore 2
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903772
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "APPID"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppid I
aload 0
aload 1
ldc "APPCODE"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mCode Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mTitle Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mCode Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mCode Ljava/lang/String;
L1:
ldc "AppSettingActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "appid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppid I
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getApplistById(I)Ljava/util/ArrayList; 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mResulList Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/initEvent()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mTitle Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/setActivityTitle(Ljava/lang/String;)V
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131626945
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
ldc_w 2131624606
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/btn Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppname Ljava/lang/String;
return
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/<init>(Landroid/app/Activity;)V
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mResulList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/setAppList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppname Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/setMappname(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/btn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/lvApplist Landroid/widget/ListView;
new com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/<init>(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mResulList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/setAppList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/notifyDataSetChanged()V
goto L1
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
new com/nd/android/u/bean4xy/DisplayMessage_App
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppid I
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mCode Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public onResume()V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/mAppSettingAdapter Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/refresh()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
return
.limit locals 1
.limit stack 1
.end method
