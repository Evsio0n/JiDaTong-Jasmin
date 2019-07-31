.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter
.super android/widget/BaseAdapter
.inner class HighSchoolAdapter inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter outer com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow
.inner class inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1

.field private 'mContext' Landroid/content/Context;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;

.method public <init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mContext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mDataList Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mDataList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
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
new com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder
dup
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder/<init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;)V
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903834
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
ldc_w 2131627121
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder/mTextView Landroid/widget/TextView;
L1:
aload 3
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder/mTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder/mTextView Landroid/widget/TextView;
new com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;I)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 5
.end method
