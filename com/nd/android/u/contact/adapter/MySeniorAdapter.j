.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/MySeniorAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/adapter/MySeniorAdapter$1
.inner class public MySeniorViewHolder inner com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder outer com/nd/android/u/contact/adapter/MySeniorAdapter

.field private 'displayImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mSeniorInfoList' Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;

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
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mContext Landroid/content/Context;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addDatas(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnonnull L0
aload 0
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public addFirstItem(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnonnull L0
aload 0
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
iconst_0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/add(ILjava/lang/Object;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
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
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/my_senior_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/<init>(Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/ivAvator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/ivAvator Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tvName I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tvSeniorTag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 4
ifnull L2
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
iconst_3
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/ivAvator Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvName Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L3
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_2
if_icmpne L4
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/yx_my_junior_female_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L5:
aload 2
new com/nd/android/u/contact/adapter/MySeniorAdapter$1
dup
aload 0
aload 4
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/MySeniorAdapter;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder
astore 3
goto L1
L4:
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_1
if_icmpne L6
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/yx_my_junior_male_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L5
L6:
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L5
L3:
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_2
if_icmpne L7
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/yx_my_senior_female_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L5
L7:
aload 4
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_1
if_icmpne L8
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/yx_my_senior_male_icon I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L5
L8:
aload 3
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$MySeniorViewHolder/tvGender Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L5
.limit locals 5
.limit stack 5
.end method

.method public setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/MySeniorAdapter/mSeniorInfoList Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
return
.limit locals 2
.limit stack 2
.end method
