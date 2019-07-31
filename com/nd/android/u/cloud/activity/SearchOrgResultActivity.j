.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SearchOrgResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/SearchOrgResultActivity$1
.inner class inner com/nd/android/u/cloud/activity/SearchOrgResultActivity$2
.inner class private SearchOrgTask inner com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask outer com/nd/android/u/cloud/activity/SearchOrgResultActivity

.field private static final 'TAG' Ljava/lang/String; = "SearchOrgResultActivity"

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'intent' Landroid/content/Intent;

.field private 'keyword' Ljava/lang/String;

.field private 'mSearchOrgTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchOrgTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field 'moreOnClick' Landroid/view/View$OnClickListener;

.field private 'pageNo' I

.field private final 'pos' I

.field private 'resulList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"

.field private 'resultListView' Landroid/widget/ListView;

.field private 'search_result_org_item_txt' Landroid/widget/TextView;

.field private 'searchorgdadapter' Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;

.field private 'selectId' I

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/selectId I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pos I
aload 0
new com/nd/android/u/cloud/activity/SearchOrgResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity$1/<init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/moreOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/SearchOrgResultActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/<init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/keyword Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pageNo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resulList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
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
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
iconst_m1
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/intent Landroid/content/Intent;
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resulList Ljava/util/List;
invokespecial com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/selectId I
invokevirtual android/widget/ListView/setSelection(I)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/total I
bipush 20
if_icmple L2
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/search_result_org_item_txt Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494950
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/total I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L4:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/getList()Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resulList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/notifyDataSetChanged()V
goto L1
L2:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L3
.limit locals 1
.limit stack 6
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903682
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/initComponentValue()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131626599
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
ldc_w 2131626598
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/search_result_org_item_txt Landroid/widget/TextView;
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903684
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/moreOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131494957
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/getIntent()Landroid/content/Intent;
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/intent Landroid/content/Intent;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/intent Landroid/content/Intent;
ldc "keyword"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/keyword Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchOrg()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 3
.end method

.method public moresearchFriend()V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pageNo I
bipush 20
imul
bipush 20
iadd
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/total I
if_icmplt L0
aload 0
ldc_w 2131493713
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchorgdadapter Lcom/nd/android/u/cloud/ui/adapter/SearchOrgAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/SearchOrgAdapter/notifyDataSetChanged()V
return
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pageNo I
iconst_1
iadd
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/pageNo I
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/resultListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getSelectedItemId()J
l2i
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/selectId I
aload 0
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/searchOrg()V
return
.limit locals 1
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public searchOrg()V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/SearchOrgResultActivity$SearchOrgTask/<init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity$1;)V
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity/mSearchOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
