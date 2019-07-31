.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/TagManagerActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$1
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$2
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$3
.inner class CardAdapter inner com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter outer com/nd/android/u/contact/activity/TagManagerActivity
.inner class Holder inner com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter$Holder outer com/nd/android/u/contact/activity/TagManagerActivity
.inner class private SendFlowerTask inner com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask outer com/nd/android/u/contact/activity/TagManagerActivity

.field private static final 'TAG' Ljava/lang/String; = "TagManagerActivity"

.field protected 'bottomLayout' Landroid/widget/RelativeLayout;

.field protected 'commentText' Landroid/widget/TextView;

.field protected 'groupNameText' Landroid/widget/TextView;

.field private 'handler' Landroid/os/Handler;

.field protected 'headerLayout' Landroid/widget/RelativeLayout;

.field protected 'labelGridView' Landroid/widget/GridView;

.field private 'leftBtn' Landroid/widget/Button;

.field protected 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"

.field protected 'mCfi' Lcom/common/android/ui/flowIndicator/CircleFlowIndicator;

.field protected 'mLabelAdapter' Lcom/nd/android/u/contact/adapter/LabelEditAdapter;

.field private 'mViewSwitchListener' Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;

.field protected 'mViewflow' Lcom/common/android/ui/flowIndicator/ViewFlow;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field protected 'm_tvTip' Landroid/widget/TextView;

.field protected 'numberText' Landroid/widget/TextView;

.field protected 'saveBtn' Landroid/widget/Button;

.field protected 'saveTagTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'saveTagTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'selectedAdapter' Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;

.field protected 'titleLayout' Landroid/widget/LinearLayout;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
new com/nd/android/u/contact/activity/TagManagerActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$2/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/TagManagerActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$3/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private saveTag()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$SendFlowerTask/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;Lcom/nd/android/u/contact/activity/TagManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveTagTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public final controlShow()V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/m_tvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/labelGridView Landroid/widget/GridView;
iconst_4
invokevirtual android/widget/GridView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/m_tvTip Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/labelGridView Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_viewflowindic I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/flowIndicator/CircleFlowIndicator
putfield com/nd/android/u/contact/activity/TagManagerActivity/mCfi Lcom/common/android/ui/flowIndicator/CircleFlowIndicator;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_viewflow I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/flowIndicator/ViewFlow
putfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setHandler(Landroid/os/Handler;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_layout_grid I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/contact/activity/TagManagerActivity/labelGridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/LabelEditAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setAdapter(Landroid/widget/Adapter;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mCfi Lcom/common/android/ui/flowIndicator/CircleFlowIndicator;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/setViewFlow(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_layout I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/TagManagerActivity/headerLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_layout_bottom I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/TagManagerActivity/bottomLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_layout_title I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/TagManagerActivity/titleLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_text_number I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagManagerActivity/numberText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_text_groupname I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagManagerActivity/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_text_comment I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagManagerActivity/commentText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_iv_no_tag I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagManagerActivity/m_tvTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_right I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/TagManagerActivity/saveBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mCfi Lcom/common/android/ui/flowIndicator/CircleFlowIndicator;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setFlowIndicator(Lcom/common/android/ui/flowIndicator/FlowIndicator;)V
aload 0
new com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/TagManagerActivity/leftBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/labelGridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/contact/activity/TagManagerActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity$1/<init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setOnViewSwitchListener(Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
sipush 200
iconst_0
iconst_0
invokevirtual android/os/Handler/obtainMessage(III)Landroid/os/Message;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/controlShow()V
return
.limit locals 2
.limit stack 6
.end method

.method protected final initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponentValue()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getIntent()Landroid/content/Intent;
ldc "tag_list"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/LabelEditAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/LabelEditAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mViewflow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/setAdapter(Landroid/widget/Adapter;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 6
.end method

.method protected final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/labelGridView Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/saveBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/leftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/TagManagerActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_right I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/TagManagerActivity/saveTag()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_tag_manager I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/setContentView(I)V
L1:
aload 1
ifnonnull L2
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getIntent()Landroid/content/Intent;
ldc "tag_list"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
L3:
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/initEvent()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/tag_manager I
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/setContentView(I)V
goto L1
L2:
aload 0
aload 1
ldc "tag_list"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
goto L3
.limit locals 2
.limit stack 3
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L0
iload 3
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/mLabelAdapter Lcom/nd/android/u/contact/adapter/LabelEditAdapter;
invokevirtual com/nd/android/u/contact/adapter/LabelEditAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/updateTagSize()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/controlShow()V
return
.limit locals 6
.limit stack 2
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "tag_list"
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected final onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/updateTagSize()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final updateTagSize()V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/numberText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/selected_num_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity/numberText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/selected_num_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 6
.end method
