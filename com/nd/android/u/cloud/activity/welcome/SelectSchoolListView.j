.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
.super android/widget/ListView
.inner class HighSchoolAdapter inner com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter outer com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
.inner class inner com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter$1
.inner class public static abstract interface OnDataSelectedListener inner com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener outer com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
.inner class ViewHolder inner com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$ViewHolder outer com/nd/android/u/cloud/activity/welcome/SelectSchoolListView

.field public static final 'ANIMATION_TIME' I = 500


.field private 'mAdapter' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;>;"

.field private 'mHandle' Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;

.field private 'mListener' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/init(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
aload 0
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mContext Landroid/content/Context;
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
aload 0
new com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter/<init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mAdapter Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mAdapter Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter;
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 6
.end method

.method private setData(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getSchoolInfoBySubName(Ljava/lang/String;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mAdapter Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter;
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$HighSchoolAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public disappear()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/getVisibility()I
bipush 8
if_icmpeq L0
new android/view/animation/ScaleAnimation
dup
fconst_1
fconst_1
fconst_1
fconst_0
fconst_1
fconst_1
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFFF)V
astore 1
aload 1
ldc2_w 500L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
bipush 8
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 8
.end method

.method public setOnDataSelectedListener(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showListView()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/getVisibility()I
ifeq L0
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setVisibility(I)V
new android/view/animation/ScaleAnimation
dup
fconst_1
fconst_1
fconst_0
fconst_1
fconst_1
fconst_1
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFFF)V
astore 1
aload 1
ldc2_w 500L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/startAnimation(Landroid/view/animation/Animation;)V
L0:
return
.limit locals 2
.limit stack 8
.end method

.method public updateInfo(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setData(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/mData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/disappear()V
return
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/showListView()V
return
.limit locals 2
.limit stack 2
.end method
