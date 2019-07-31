.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/VersionResumeActivity
.super com/product/android/ui/activity/HeaderActivity

.field private 'mListView' Landroid/widget/ListView;

.field private 'mVersionResumeAdapter' Lcom/nd/android/u/cloud/ui/adapter/VersionResumeAdapter;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getVerSionList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/cloud/bean/VersionResumeInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
invokestatic com/nd/android/u/cloud/helper/InitDiffProductUtils/getVersionResume(Landroid/content/Context;)Ljava/util/ArrayList;
astore 3
aload 3
ifnull L0
iconst_0
istore 1
L1:
iload 1
iconst_1
iadd
aload 3
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
new com/nd/android/u/cloud/bean/VersionResumeInfo
dup
invokespecial com/nd/android/u/cloud/bean/VersionResumeInfo/<init>()V
astore 4
aload 4
aload 3
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/nd/android/u/cloud/bean/VersionResumeInfo/version_code Ljava/lang/String;
aload 4
aload 3
iload 1
iconst_1
iadd
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/nd/android/u/cloud/bean/VersionResumeInfo/version_text Ljava/lang/String;
aload 2
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903797
invokevirtual com/nd/android/u/cloud/activity/VersionResumeActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/VersionResumeActivity/initComponent()V
aload 0
aload 0
ldc_w 2131495540
invokevirtual com/nd/android/u/cloud/activity/VersionResumeActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/VersionResumeActivity/setActivityTitle(Ljava/lang/String;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131627014
invokevirtual com/nd/android/u/cloud/activity/VersionResumeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/VersionResumeActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/VersionResumeActivity/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
new com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter
dup
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/VersionResumeActivity/getVerSionList()Ljava/util/ArrayList;
invokespecial com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/nd/android/u/cloud/activity/VersionResumeActivity/mVersionResumeAdapter Lcom/nd/android/u/cloud/ui/adapter/VersionResumeAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/VersionResumeActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/VersionResumeActivity/mVersionResumeAdapter Lcom/nd/android/u/cloud/ui/adapter/VersionResumeAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 5
.end method
