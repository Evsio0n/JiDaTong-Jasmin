.bytecode 50.0
.class public synchronized com/nd/teamfile/fragment/FileExplorerFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/teamfile/fragment/FileExplorerFragment$1
.inner class inner com/nd/teamfile/fragment/FileExplorerFragment$2
.inner class inner com/nd/teamfile/fragment/FileExplorerFragment$3
.inner class inner com/nd/teamfile/fragment/FileExplorerFragment$4
.inner class private PathScrollPositionItem inner com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem outer com/nd/teamfile/fragment/FileExplorerFragment

.field public static final 'CUR_PATH' Ljava/lang/String; = "CUR_PATH"

.field private static final 'MAX_UPLOAD_FILES' I = 9


.field private 'mActivity' Landroid/app/Activity;

.field private 'mAdapter' Lcom/nd/teamfile/adapter/FileListAdapter;

.field private 'mBtnSendFiles' Landroid/widget/Button;

.field private 'mCheckedFileNameList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'mCheckedFileSize' J

.field private 'mCurrentPath' Ljava/lang/String;

.field private 'mFileIconHelper' Lcom/nd/teamfile/helper/FileIconHelper;

.field private 'mFileNameList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'mFileSortHelper' Lcom/nd/teamfile/helper/FileSortHelper;

.field private 'mIvBack' Landroid/widget/ImageView;

.field private 'mIvBackUpLevel' Landroid/widget/ImageView;

.field private 'mIvPathArrow' Landroid/widget/ImageView;

.field private 'mLlCurPathPane' Landroid/widget/LinearLayout;

.field private 'mLlDropDownList' Landroid/widget/LinearLayout;

.field private 'mLlNavigationBar' Landroid/widget/LinearLayout;

.field private 'mLlSdNotAvailable' Landroid/widget/LinearLayout;

.field private 'mLvFileList' Landroid/widget/ListView;

.field private 'mPreviousPath' Ljava/lang/String;

.field private 'mRoot' Ljava/lang/String;

.field private 'mRootView' Landroid/view/View;

.field private 'mScrollPositionList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem;>;"

.field private 'mSvDropDownList' Landroid/widget/ScrollView;

.field private 'mTvCheckSize' Landroid/widget/TextView;

.field private 'mTvCurPath' Landroid/widget/TextView;

.field private 'onClick' Landroid/view/View$OnClickListener;

.field private 'onNavigationClick' Landroid/view/View$OnClickListener;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
aload 0
new com/nd/teamfile/fragment/FileExplorerFragment$3
dup
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment$3/<init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;)V
putfield com/nd/teamfile/fragment/FileExplorerFragment/onNavigationClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/teamfile/fragment/FileExplorerFragment$4
dup
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment$4/<init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;)V
putfield com/nd/teamfile/fragment/FileExplorerFragment/onClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/teamfile/fragment/FileExplorerFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
aload 0
aload 1
aload 2
iload 3
lload 4
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
return
.limit locals 6
.limit stack 6
.end method

.method static synthetic access$100(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Landroid/widget/ListView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/teamfile/fragment/FileExplorerFragment;Z)V
aload 0
iload 1
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showDropdownNavigation(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/nd/teamfile/fragment/FileExplorerFragment;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Ljava/lang/String;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRoot Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/teamfile/fragment/FileExplorerFragment;)V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/refreshFileList()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Z
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/doBackUpLevel()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Landroid/app/Activity;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method private clearSelection()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/isInSelection()Z
ifeq L0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
astore 2
aload 2
ifnull L1
aload 2
iconst_0
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/Selected Z
goto L1
L2:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/onDataChanged()V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method private computeScrollPosition(Ljava/lang/String;)I
iconst_0
istore 3
iconst_0
istore 4
iload 4
istore 2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mPreviousPath Ljava/lang/String;
ifnull L0
aload 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mPreviousPath Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
istore 2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mPreviousPath Ljava/lang/String;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem
getfield com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem/path Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem
iload 2
putfield com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem/pos I
L0:
aload 0
aload 1
putfield com/nd/teamfile/fragment/FileExplorerFragment/mPreviousPath Ljava/lang/String;
iload 2
ireturn
L2:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
new com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem
dup
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mPreviousPath Ljava/lang/String;
iload 2
invokespecial com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem/<init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 4
istore 2
goto L0
L1:
iconst_0
istore 4
L3:
iload 4
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem
getfield com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem/path Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L5
L4:
iload 4
ifle L6
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
iload 4
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem
getfield com/nd/teamfile/fragment/FileExplorerFragment$PathScrollPositionItem/pos I
istore 3
L6:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 5
L7:
iload 3
istore 2
iload 5
iload 4
iconst_1
isub
if_icmplt L0
iload 3
istore 2
iload 5
iflt L0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mScrollPositionList Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
iload 5
iconst_1
isub
istore 5
goto L7
L5:
iload 4
iconst_1
iadd
istore 4
goto L3
.limit locals 6
.limit stack 6
.end method

.method private doBackUpLevel()Z
iconst_0
istore 1
aload 0
iconst_0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showDropdownNavigation(Z)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRoot Ljava/lang/String;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
new java/io/File
dup
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/getParent()Ljava/lang/String;
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/refreshFileList()V
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 4
.end method

.method private getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
ldc "/"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method private getIntentData()V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
astore 1
aload 0
ldc "/"
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/setRootPath(Ljava/lang/String;)V
aload 0
invokestatic com/common/android/utils/SdCardUtils/getSdCardPath()Ljava/lang/String;
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ifnull L0
aload 0
aload 1
ldc "CUR_PATH"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmple L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
areturn
.limit locals 2
.limit stack 3
.end method

.method private getViewById(I)Landroid/view/View;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRootView Landroid/view/View;
iload 1
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
areturn
.limit locals 2
.limit stack 2
.end method

.method private initData()V
aload 0
new com/nd/teamfile/adapter/FileListAdapter
dup
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileIconHelper Lcom/nd/teamfile/helper/FileIconHelper;
invokespecial com/nd/teamfile/adapter/FileListAdapter/<init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/teamfile/helper/FileIconHelper;)V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mAdapter Lcom/nd/teamfile/adapter/FileListAdapter;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mAdapter Lcom/nd/teamfile/adapter/FileListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/refreshFileList()V
return
.limit locals 1
.limit stack 6
.end method

.method private initEvent()V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mIvBack Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLlCurPathPane Landroid/widget/LinearLayout;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mIvBackUpLevel Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mBtnSendFiles Landroid/widget/Button;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
new com/nd/teamfile/fragment/FileExplorerFragment$1
dup
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment$1/<init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initNaivgationBar()V
aload 0
aload 0
getstatic com/nd/teamfile/R$id/llNavigationBar I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/teamfile/fragment/FileExplorerFragment/mLlNavigationBar Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/tvCurPath I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mTvCurPath Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/ivPathArrow I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mIvPathArrow Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/llCurPathPane I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/teamfile/fragment/FileExplorerFragment/mLlCurPathPane Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/svDropDownList I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/llDropDownList I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/teamfile/fragment/FileExplorerFragment/mLlDropDownList Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/ivBackUpLevel I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mIvBackUpLevel Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method private initView()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/initNaivgationBar()V
aload 0
aload 0
getstatic com/nd/teamfile/R$id/llNavigationBar I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/teamfile/fragment/FileExplorerFragment/mLlSdNotAvailable Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/ivBack I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mIvBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/lvFileList I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/btnSendFiles I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/teamfile/fragment/FileExplorerFragment/mBtnSendFiles Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/tvCheckSize I
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/fragment/FileExplorerFragment/mTvCheckSize Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private isInSelection()Z
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private onBackPressed()Z
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
invokevirtual android/widget/ScrollView/getVisibility()I
ifne L0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
bipush 8
invokevirtual android/widget/ScrollView/setVisibility(I)V
L1:
iconst_1
ireturn
L0:
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/doBackUpLevel()Z
ifne L1
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private onDataChanged()V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mAdapter Lcom/nd/teamfile/adapter/FileListAdapter;
invokevirtual com/nd/teamfile/adapter/FileListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method private onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ShowToast" 
.end annotation
iconst_0
istore 6
aload 0
iload 3
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
astore 1
aload 0
iconst_0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showDropdownNavigation(Z)V
aload 1
ifnonnull L0
return
L0:
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
ldc ".rc"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
getstatic com/nd/teamfile/R$string/upload_warning I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L1:
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifne L2
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/Selected Z
istore 7
iload 7
ifeq L3
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileSize J
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileSize J
lsub
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileSize J
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L4:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mTvCheckSize Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileSize J
invokestatic com/nd/teamfile/util/FileExplorerUtil/convertStorage(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 7
ifne L5
iconst_1
istore 6
L5:
aload 1
iload 6
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/Selected Z
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mAdapter Lcom/nd/teamfile/adapter/FileListAdapter;
invokevirtual com/nd/teamfile/adapter/FileListAdapter/notifyDataSetChanged()V
return
L3:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 9
if_icmple L6
getstatic com/nd/teamfile/R$string/upload_max I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L6:
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileSize J
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileSize J
ladd
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileSize J
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCheckedFileNameList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L4
L2:
aload 0
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/refreshFileList()V
return
.limit locals 8
.limit stack 5
.end method

.method private onRefreshFileList()Z
iconst_0
istore 4
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
iconst_4
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
new java/io/File
dup
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifeq L1
aload 6
invokevirtual java/io/File/isDirectory()Z
ifeq L1
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/computeScrollPosition(Ljava/lang/String;)I
istore 2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
astore 5
aload 5
invokevirtual java/util/ArrayList/clear()V
aload 6
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 6
aload 6
ifnonnull L2
iconst_1
ireturn
L2:
aload 6
arraylength
istore 3
iconst_0
istore 1
L3:
iload 1
iload 3
if_icmpge L4
aload 6
iload 1
aaload
astore 7
aload 7
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/isNormalFile(Ljava/lang/String;)Z
ifeq L5
aload 7
invokestatic com/nd/teamfile/util/FileExplorerUtil/GetFileInfo(Ljava/io/File;)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
astore 7
aload 7
ifnull L5
aload 5
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
aload 0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileSortHelper Lcom/nd/teamfile/helper/FileSortHelper;
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/sortCurrentList(Lcom/nd/teamfile/helper/FileSortHelper;)V
aload 5
invokevirtual java/util/ArrayList/size()I
ifne L6
iconst_1
istore 4
L6:
aload 0
iload 4
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showEmptyView(Z)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLvFileList Landroid/widget/ListView;
new com/nd/teamfile/fragment/FileExplorerFragment$2
dup
aload 0
iload 2
invokespecial com/nd/teamfile/fragment/FileExplorerFragment$2/<init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;I)V
invokevirtual android/widget/ListView/post(Ljava/lang/Runnable;)Z
pop
iconst_1
ireturn
.limit locals 8
.limit stack 5
.end method

.method private refreshFileList()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/updateNavigationPane()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/onRefreshFileList()Z
pop
return
.limit locals 1
.limit stack 1
.end method

.method private setRootPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/fragment/FileExplorerFragment/mRoot Ljava/lang/String;
aload 0
aload 1
putfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private showDropdownNavigation(Z)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
astore 3
iload 1
ifeq L0
iconst_0
istore 2
L1:
aload 3
iload 2
invokevirtual android/widget/ScrollView/setVisibility(I)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mIvPathArrow Landroid/widget/ImageView;
astore 3
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
invokevirtual android/widget/ScrollView/getVisibility()I
ifne L2
getstatic com/nd/teamfile/R$drawable/path_arrow_up I
istore 2
L3:
aload 3
iload 2
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L0:
bipush 8
istore 2
goto L1
L2:
getstatic com/nd/teamfile/R$drawable/path_arrow_down I
istore 2
goto L3
.limit locals 4
.limit stack 2
.end method

.method private showEmptyView(Z)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRootView Landroid/view/View;
getstatic com/nd/teamfile/R$id/empty_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 3
aload 3
ifnull L0
iload 1
ifeq L1
iconst_0
istore 2
L2:
aload 3
iload 2
invokevirtual android/view/View/setVisibility(I)V
L0:
return
L1:
bipush 8
istore 2
goto L2
.limit locals 4
.limit stack 2
.end method

.method private sortCurrentList(Lcom/nd/teamfile/helper/FileSortHelper;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mFileNameList Ljava/util/ArrayList;
aload 1
invokevirtual com/nd/teamfile/helper/FileSortHelper/getComparator()Ljava/util/Comparator;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/onDataChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method private updateNavigationPane()V
iconst_0
istore 2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mIvBackUpLevel Landroid/widget/ImageView;
astore 3
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRoot Ljava/lang/String;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_4
istore 1
L1:
aload 3
iload 1
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mIvPathArrow Landroid/widget/ImageView;
astore 3
iload 2
istore 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRoot Ljava/lang/String;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
bipush 8
istore 1
L2:
aload 3
iload 1
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mTvCurPath Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 4
.limit stack 2
.end method

.method public onBack()Z
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/onBackPressed()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 0
invokevirtual com/nd/teamfile/fragment/FileExplorerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
checkcast com/nd/teamfile/activity/FileExplorerActivity
putfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
aload 0
aload 1
getstatic com/nd/teamfile/R$layout/fragment_file_explorer I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/teamfile/fragment/FileExplorerFragment/mRootView Landroid/view/View;
aload 0
new com/nd/teamfile/helper/FileIconHelper
dup
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
invokespecial com/nd/teamfile/helper/FileIconHelper/<init>(Landroid/content/Context;)V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mFileIconHelper Lcom/nd/teamfile/helper/FileIconHelper;
aload 0
new com/nd/teamfile/helper/FileSortHelper
dup
invokespecial com/nd/teamfile/helper/FileSortHelper/<init>()V
putfield com/nd/teamfile/fragment/FileExplorerFragment/mFileSortHelper Lcom/nd/teamfile/helper/FileSortHelper;
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/initView()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/getIntentData()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/initData()V
aload 0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/initEvent()V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroyView()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroyView()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onNavigationBarClick()V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mSvDropDownList Landroid/widget/ScrollView;
invokevirtual android/widget/ScrollView/getVisibility()I
ifne L0
aload 0
iconst_0
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showDropdownNavigation(Z)V
L1:
return
L0:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLlDropDownList Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iconst_0
istore 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mCurrentPath Ljava/lang/String;
astore 7
iconst_1
istore 2
iconst_0
istore 3
L2:
iload 1
iconst_m1
if_icmpeq L3
aload 7
ldc "/"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 7
ldc "/"
iload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 4
iload 4
iconst_m1
if_icmpne L4
L3:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLlDropDownList Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
ifle L1
aload 0
iconst_1
invokespecial com/nd/teamfile/fragment/FileExplorerFragment/showDropdownNavigation(Z)V
return
L4:
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/teamfile/R$layout/dropdown_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 8
aload 8
getstatic com/nd/teamfile/R$id/llDropDownItem I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iload 3
iconst_0
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
iload 3
bipush 20
iadd
istore 3
aload 8
getstatic com/nd/teamfile/R$id/ivItemIcon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 5
iload 2
ifeq L5
getstatic com/nd/teamfile/R$drawable/dropdown_icon_root I
istore 2
L6:
aload 5
iload 2
invokevirtual android/widget/ImageView/setImageResource(I)V
iconst_0
istore 2
aload 8
getstatic com/nd/teamfile/R$id/tvPathName I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 9
aload 7
iload 1
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 6
aload 6
astore 5
aload 6
invokevirtual java/lang/String/isEmpty()Z
ifeq L7
ldc "/"
astore 5
L7:
aload 9
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 8
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/onNavigationClick Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 8
aload 7
iconst_0
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
iload 4
iconst_1
iadd
istore 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment/mLlDropDownList Landroid/widget/LinearLayout;
aload 8
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
goto L2
L5:
getstatic com/nd/teamfile/R$drawable/dropdown_icon_folder I
istore 2
goto L6
.limit locals 10
.limit stack 5
.end method
