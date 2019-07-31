.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/GroupView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/contact/view/GroupView$1

.field private 'descText' Landroid/widget/TextView;

.field private 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field private 'groupFace' Landroid/widget/ImageView;

.field private 'groupNameText' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'onclick' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/contact/view/GroupView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/GroupView$1/<init>(Lcom/nd/android/u/contact/view/GroupView;)V
putfield com/nd/android/u/contact/view/GroupView/onclick Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/GroupView/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/GroupView/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/view/GroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/GroupView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView()V
aload 0
getfield com/nd/android/u/contact/view/GroupView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/grouplist_group_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_item_tx_name I
invokevirtual com/nd/android/u/contact/view/GroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/GroupView/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_item_img_contact I
invokevirtual com/nd/android/u/contact/view/GroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/GroupView/groupFace Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_item_tx_desc I
invokevirtual com/nd/android/u/contact/view/GroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/GroupView/descText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupFace Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/GroupView/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/view/GroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupNameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/GroupView/descText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupFace Landroid/widget/ImageView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
invokestatic com/nd/android/u/contact/business/SimpleGroupHeadImageLoader/displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public initComponentValueBySearch(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/view/GroupView/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupNameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/GroupView/descText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getMembernum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u4eba"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/product/android/commonInterface/contact/OapGroup/type I
iconst_4
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupFace Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/club_logo I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/GroupView/groupFace Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/group_face I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 3
.end method
