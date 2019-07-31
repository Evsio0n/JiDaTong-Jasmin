.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/FindSeniorAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/adapter/FindSeniorAdapter$1
.inner class public static abstract interface OnItemClickListener inner com/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener outer com/nd/android/u/contact/adapter/FindSeniorAdapter
.inner class ViewHolder inner com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder outer com/nd/android/u/contact/adapter/FindSeniorAdapter

.field private 'context' Landroid/content/Context;

.field private 'displayImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'inflater' Landroid/view/LayoutInflater;

.field private 'onItemClickListener' Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;

.field private 'seniorInfoList' Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/inflater Landroid/view/LayoutInflater;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/context Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
aload 2
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/inflater Landroid/view/LayoutInflater;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/context Landroid/content/Context;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/onItemClickListener Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/isEmpty()Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
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

.method public getLastItem()Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ifle L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
iconst_1
isub
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public getOnItemClickListener()Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/onItemClickListener Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnull L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnonnull L1
L0:
new com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/<init>(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/inflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/find_senior_item I
aconst_null
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_avator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/imgAvator Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_collage I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvCollage Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_native I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvNative Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_league I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvLeague Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/find_senior_item_highSchool I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvHighSchool Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L2:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
astore 4
aload 4
ifnull L3
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
iconst_3
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/imgAvator Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvCollage Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/joindate Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/majorname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvNative Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvLeague Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder/tvHighSchool Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/highschool Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 2
new com/nd/android/u/contact/adapter/FindSeniorAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/adapter/FindSeniorAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;I)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L1:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/FindSeniorAdapter$ViewHolder
astore 3
goto L2
.limit locals 5
.limit stack 5
.end method

.method public setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/seniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemClickListener(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter/onItemClickListener Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method
