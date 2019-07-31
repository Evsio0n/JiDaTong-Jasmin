.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/adapter/HeaderAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/tast/main/adapter/HeaderAdapter$1
.inner class private ViewHolder inner com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder outer com/nd/android/u/tast/main/adapter/HeaderAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mUserList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/RangeBean;>;"

.field private 'toProfile' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/RangeBean;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nd/android/u/tast/main/adapter/HeaderAdapter$1
dup
aload 0
invokespecial com/nd/android/u/tast/main/adapter/HeaderAdapter$1/<init>(Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;)V
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter/toProfile Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mUserList Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mUserList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mUserList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/tast/experience/bean/RangeBean;
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mUserList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mUserList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/tast/experience/bean/RangeBean
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/main/adapter/HeaderAdapter/getItem(I)Lcom/nd/android/u/tast/experience/bean/RangeBean;
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
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/simple_header_item I
aload 3
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 2
new com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/<init>(Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;Lcom/nd/android/u/tast/main/adapter/HeaderAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/ivHeader I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tvName I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 3
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter/toProfile Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/main/adapter/HeaderAdapter/getItem(I)Lcom/nd/android/u/tast/experience/bean/RangeBean;
astore 4
aload 3
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/tast/experience/bean/RangeBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
aload 4
invokevirtual com/nd/android/u/tast/experience/bean/RangeBean/getId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 4
invokevirtual com/nd/android/u/tast/experience/bean/RangeBean/getId()J
iconst_3
aload 3
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/main/adapter/HeaderAdapter$ViewHolder
astore 3
goto L1
.limit locals 5
.limit stack 5
.end method
