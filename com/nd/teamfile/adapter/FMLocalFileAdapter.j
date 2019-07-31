.bytecode 50.0
.class public synchronized com/nd/teamfile/adapter/FMLocalFileAdapter
.super android/widget/BaseAdapter
.inner class public final FMFileItem inner com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem outer com/nd/teamfile/adapter/FMLocalFileAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mFilelist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileInfo;>;"

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileInfo;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/teamfile/adapter/FMLocalFileAdapter/mContext Landroid/content/Context;
aload 0
aload 1
putfield com/nd/teamfile/adapter/FMLocalFileAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
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
new com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem
dup
aload 0
invokespecial com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/<init>(Lcom/nd/teamfile/adapter/FMLocalFileAdapter;)V
astore 3
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/teamfile/R$layout/fmlocalfile_listview_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/teamfile/R$id/FMLayout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMLinearLayout Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/teamfile/R$id/FMName I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMNameText Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/teamfile/R$id/FMLogo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMImageView Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileInfo
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getState()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMNameText Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileInfo
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L2
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMLinearLayout Landroid/widget/RelativeLayout;
getstatic com/nd/teamfile/R$drawable/preference_one_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem
astore 3
goto L1
L2:
iload 1
ifne L3
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMLinearLayout Landroid/widget/RelativeLayout;
getstatic com/nd/teamfile/R$drawable/preference_first_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
areturn
L3:
iload 1
aload 0
getfield com/nd/teamfile/adapter/FMLocalFileAdapter/mFilelist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpne L4
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMLinearLayout Landroid/widget/RelativeLayout;
getstatic com/nd/teamfile/R$drawable/preference_last_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
areturn
L4:
aload 3
getfield com/nd/teamfile/adapter/FMLocalFileAdapter$FMFileItem/FMLinearLayout Landroid/widget/RelativeLayout;
getstatic com/nd/teamfile/R$drawable/preference_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
