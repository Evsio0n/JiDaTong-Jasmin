.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MainAppListActivity
.super com/product/android/ui/activity/BaseReceiveActivity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.inner class inner com/nd/android/u/cloud/activity/MainAppListActivity$1

.field private 'adapter' Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;

.field private 'app_text_title' Landroid/widget/TextView;

.field private 'back' Landroid/widget/Button;

.field private 'ctx' Landroid/content/Context;

.field private 'gridView' Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;

.field private 'head_progressBar' Landroid/widget/ProgressBar;

.field private 'mHeaderLayout' Landroid/widget/LinearLayout;

.field private 'promptLayout' Landroid/widget/LinearLayout;

.field protected 'showBegin' Z

.field protected 'synAppInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'typecode' Ljava/lang/String;

.field private 'typename' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/MainAppListActivity/typecode Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/MainAppListActivity/typename Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/ctx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_Suggest()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20002()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_x20002()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
ldc_w 2131624565
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/MainAppListActivity/back Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131624566
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainAppListActivity/app_text_title Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624567
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/cloud/activity/MainAppListActivity/head_progressBar Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/head_progressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
aload 0
ldc_w 2131624559
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/ui/draggrid/DragGridView
putfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
new com/nd/android/u/cloud/ui/adapter/AppAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
aload 0
ldc_w 2131624574
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainAppListActivity/promptLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
ldc_w 2131624573
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainAppListActivity/mHeaderLayout Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 1
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/mHeaderLayout Landroid/widget/LinearLayout;
iload 1
iload 2
invokevirtual android/widget/LinearLayout/measure(II)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/mHeaderLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getMeasuredHeight()I
istore 1
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
iload 1
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setDeviationTop(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/getIntent()Landroid/content/Intent;
ldc "typecode"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/MainAppListActivity/typecode Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/getIntent()Landroid/content/Intent;
ldc "typename"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/MainAppListActivity/typename Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/app_text_title Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/typename Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/refreshAdapter()V
return
.limit locals 3
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/back Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
new com/nd/android/u/cloud/activity/MainAppListActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainAppListActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MainAppListActivity;)V
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624565
L0
default : L1
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903160
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/setContentView(I)V
aload 0
aload 0
putfield com/nd/android/u/cloud/activity/MainAppListActivity/ctx Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
return
.limit locals 6
.limit stack 0
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppListActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshAdapter()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/ui/adapter/AppAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/typecode Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapApps(Ljava/lang/String;)Ljava/util/Vector; 1
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/util/Vector/size()I
ifne L2
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/promptLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
bipush 8
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
iconst_0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/setAppList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 4
.end method
