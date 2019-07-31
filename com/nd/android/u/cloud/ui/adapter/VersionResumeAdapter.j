.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter
.super android/widget/BaseAdapter
.inner class public final VersionItem inner com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem outer com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mVersionList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/cloud/bean/VersionResumeInfo;>;"

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/cloud/bean/VersionResumeInfo;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mVersionList Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mContext Landroid/content/Context;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mVersionList Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mVersionList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem/<init>(Lcom/nd/android/u/cloud/ui/adapter/VersionResumeAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903798
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
ldc_w 2131627015
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem/tvVersionCode Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131627016
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem/tvVersionText Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem/tvVersionCode Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mVersionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/bean/VersionResumeInfo
getfield com/nd/android/u/cloud/bean/VersionResumeInfo/version_code Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem/tvVersionText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter/mVersionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/bean/VersionResumeInfo
getfield com/nd/android/u/cloud/bean/VersionResumeInfo/version_text Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/VersionResumeAdapter$VersionItem
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method
