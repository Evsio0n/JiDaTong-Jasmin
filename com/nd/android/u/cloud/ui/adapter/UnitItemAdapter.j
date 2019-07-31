.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/UnitItemAdapter
.super android/widget/BaseAdapter
.inner class public static ViewHolder inner com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder outer com/nd/android/u/cloud/ui/adapter/UnitItemAdapter

.field private 'inflater' Landroid/view/LayoutInflater;

.field private 'mContext' Landroid/content/Context;

.field private 'mIsBind' Z

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"

.field private 'mSelectedPos' I

.method public <init>(Landroid/content/Context;Ljava/util/List;Z)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;Z)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mSelectedPos I
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/inflater Landroid/view/LayoutInflater;
aload 0
iload 3
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mIsBind Z
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mList Ljava/util/List;
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mList Ljava/util/List;
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
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/inflater Landroid/view/LayoutInflater;
ldc_w 2130903421
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder
dup
invokespecial com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
ldc_w 2131625645
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mIvUnit Landroid/widget/ImageView;
aload 3
aload 2
ldc_w 2131625648
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mImageView Landroid/widget/ImageView;
aload 3
aload 2
ldc_w 2131625649
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
aload 3
aload 2
ldc_w 2131625646
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mUnitTV Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131625647
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mNameTV Landroid/widget/TextView;
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mIsBind Z
ifeq L2
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mImageView Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
astore 5
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
astore 6
iload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mSelectedPos I
if_icmpne L4
iconst_1
istore 4
L5:
aload 6
iload 4
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mUnitTV Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUnitName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mNameTV Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUid()J
iconst_1
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mIvUnit Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
goto L3
L4:
iconst_0
istore 4
goto L5
.limit locals 7
.limit stack 4
.end method

.method public setSelectedPos(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/mSelectedPos I
return
.limit locals 2
.limit stack 2
.end method
