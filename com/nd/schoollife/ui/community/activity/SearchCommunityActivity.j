.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity
.super com/nd/schoollife/ui/common/base/BaseFragmentActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3
.inner class MyCategoryAdapter inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter outer com/nd/schoollife/ui/community/activity/SearchCommunityActivity
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1
.inner class private static ViewHolder inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder outer com/nd/schoollife/ui/community/activity/SearchCommunityActivity

.field private 'btnBack' Landroid/widget/Button;

.field private 'btnClear' Landroid/widget/Button;

.field private 'etSearch' Landroid/widget/EditText;

.field private 'gvCategorys' Landroid/widget/GridView;

.field private 'mCategoryAdapter' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;

.field private 'mFlowLayout' Lcom/nd/schoollife/ui/common/widget/FlowLayout;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/btnClear Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createAndFillView(Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;)V
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/getList()Ljava/util/ArrayList;
astore 1
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mFlowLayout Lcom/nd/schoollife/ui/common/widget/FlowLayout;
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/removeAllViews()V
iconst_0
istore 2
L2:
iload 2
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/hot_key_item_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 4
getstatic com/nd/schoollife/R$id/tv_hot_key_item_view_tag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 5
aload 4
getstatic com/nd/schoollife/R$id/tv_hot_key_item_view_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/structure/HotKeyInfoBean
astore 7
aload 7
ifnull L3
aload 5
aload 7
invokevirtual com/nd/schoollife/common/bean/structure/HotKeyInfoBean/getKeywords()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 7
invokevirtual com/nd/schoollife/common/bean/structure/HotKeyInfoBean/getHits()I
istore 3
iload 3
ifne L4
aload 6
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
aload 4
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3
dup
aload 0
aload 7
invokevirtual com/nd/schoollife/common/bean/structure/HotKeyInfoBean/getKeywords()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$3/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;Ljava/lang/String;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mFlowLayout Lcom/nd/schoollife/ui/common/widget/FlowLayout;
aload 4
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/addView(Landroid/view/View;)V
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
iload 3
sipush 999
if_icmple L6
aload 6
ldc "999+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L5
L6:
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L5
.limit locals 8
.limit stack 5
.end method

.method public static jumpToSearchByCategory(Landroid/content/Context;JLjava/lang/String;)Z
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/CommunityCategoryActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
ldc "category_id"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 4
ldc "category_name"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static jumpToSearchByKey(Landroid/content/Context;Ljava/lang/String;)Z
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "\u641c\u7d22\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/SearchCommunityResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "keyWord"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method private startGetCategoryTask()V
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4101
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_0
anewarray java/lang/String
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private startGetKeyTask()V
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4108
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "1"
aastore
dup
iconst_1
ldc "10"
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_search_community I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/gv_search_community_category I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/gvCategorys Landroid/widget/GridView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/flowLayout I
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mFlowLayout Lcom/nd/schoollife/ui/common/widget/FlowLayout;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mFlowLayout Lcom/nd/schoollife/ui/common/widget/FlowLayout;
iconst_0
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout/setOrientation(I)V
aload 0
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter
dup
aload 0
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mCategoryAdapter Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/gvCategorys Landroid/widget/GridView;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mCategoryAdapter Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity/startGetKeyTask()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity/startGetCategoryTask()V
return
.limit locals 1
.limit stack 5
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/btnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/btnClear Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new com/nd/schoollife/common/utils/MyLengthFilter
dup
bipush 30
invokespecial com/nd/schoollife/common/utils/MyLengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$2/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;)V
invokevirtual android/widget/EditText/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
iconst_3
invokevirtual android/widget/EditText/setImeOptions(I)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/search_community_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_search_community_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/btnBack Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_search_community_clear I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/btnClear Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/et_search_community I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_search_community_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity/onBackPressed()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_search_community_clear I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/etSearch Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onReloadClicked()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity/startGetKeyTask()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity/startGetCategoryTask()V
return
.limit locals 1
.limit stack 1
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isSuccess()Z
ifne L1
L0:
return
L1:
iload 1
lookupswitch
4101 : L2
4108 : L3
default : L4
L4:
return
L2:
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
astore 2
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getList()Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mCategoryAdapter Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getList()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity/mCategoryAdapter Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;
invokevirtual com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/notifyDataSetChanged()V
return
L3:
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
astore 2
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/getList()Ljava/util/ArrayList;
ifnull L0
aload 0
aload 2
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity/createAndFillView(Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;)V
return
.limit locals 4
.limit stack 2
.end method
