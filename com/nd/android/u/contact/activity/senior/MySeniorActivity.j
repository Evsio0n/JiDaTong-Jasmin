.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/MySeniorActivity
.super android/app/Activity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.implements com/nd/android/u/contact/listener/ContactObserver
.inner class inner com/nd/android/u/contact/activity/senior/MySeniorActivity$1
.inner class inner com/nd/android/u/contact/activity/senior/MySeniorActivity$2
.inner class GetMySeniorTask inner com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask outer com/nd/android/u/contact/activity/senior/MySeniorActivity

.field private static final 'REQUEST_NEW_JUNIOR_APPLY_CODE' I = 1


.field private 'mAdatper' Lcom/nd/android/u/contact/adapter/MySeniorAdapter;

.field private 'mGetSeniorListTask' Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;

.field private 'mHasNewData' Z

.field private 'mIvAvator' Landroid/widget/ImageView;

.field private 'mIvMySenior' Landroid/widget/ImageView;

.field private 'mIvNewSeniorCount' Landroid/widget/ImageView;

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mTvMySenior' Landroid/widget/TextView;

.field private 'mTvTitle' Landroid/widget/TextView;

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvNewSeniorCount Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_title I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_my_avator I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvAvator Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvMyNewSeniorCount I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvNewSeniorCount Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ivMySenior I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvMySenior Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvMySenior I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvMySenior Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/my_senior_list_view I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/registerObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/yx_my_junior I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvAvator Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvMySenior Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/yx_new_junior_request I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mHasNewData Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvNewSeniorCount Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvMySenior Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/yx_new_junior_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L3:
aload 0
new com/nd/android/u/contact/adapter/MySeniorAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvNewSeniorCount Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvTitle Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/yx_my_senior I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvAvator Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mTvMySenior Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/yx_find_senior I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvNewSeniorCount Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvMySenior Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/my_senior_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setPullToRefreshEnabled(Z)V
aload 0
getstatic com/nd/android/u/contact/R$id/rl_middle I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvAvator Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
iconst_1
if_icmpne L0
aload 3
ldc "isAgree"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
return
L1:
aload 3
ldc "agreeList"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
astore 4
aload 4
ifnull L0
aload 4
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
astore 5
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
ifnonnull L4
aload 0
new com/nd/android/u/contact/adapter/MySeniorAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
L4:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 5
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/addFirstItem(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
goto L2
L3:
ldc com/nd/android/u/contact/dao/MySeniorDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MySeniorDao
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mAdatper Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/getData()Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokeinterface com/nd/android/u/contact/dao/MySeniorDao/insertMySeniorList(ILcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V 2
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 6
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/contact/R$id/rl_middle I
if_icmpne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L1
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L2
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L2
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
iconst_1
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/notifyContactStateChange(IZ)V
L2:
aload 1
aload 0
ldc com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/startActivityForResult(Landroid/content/Intent;I)V
L3:
return
L1:
aload 1
aload 0
ldc com/nd/android/u/contact/activity/senior/FindSeniorActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/startActivity(Landroid/content/Intent;)V
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/iv_my_avator I
if_icmpne L4
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mUid J
iconst_0
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/gotoSeniorApplyActivity(Landroid/content/Context;JZ)I
pop
return
L4:
iload 2
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L3
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method public onContactStateChange()V
aload 0
new com/nd/android/u/contact/activity/senior/MySeniorActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/MySeniorActivity$2/<init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)V
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_my_senior I
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/getIntent()Landroid/content/Intent;
ldc "hasNewData"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mHasNewData Z
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/getIntent()Landroid/content/Intent;
ldc "uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mUid J
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/initEvent()V
aload 0
new com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask
dup
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/<init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;Z)V
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mGetSeniorListTask Lcom/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask;
iconst_1
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/cancel(Z)Z
pop
L0:
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L1
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/unregisterObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L1:
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
bipush -99
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
.limit locals 6
.limit stack 4
.end method

.method public onReceiverNewContact(I)V
aload 0
new com/nd/android/u/contact/activity/senior/MySeniorActivity$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/senior/MySeniorActivity$1/<init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;I)V
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onResume()V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mUid J
iconst_3
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mIvAvator Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L1
iconst_1
istore 1
L2:
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity/mHasNewData Z
L0:
aload 0
invokespecial android/app/Activity/onResume()V
return
L1:
iconst_0
istore 1
goto L2
.limit locals 2
.limit stack 5
.end method
