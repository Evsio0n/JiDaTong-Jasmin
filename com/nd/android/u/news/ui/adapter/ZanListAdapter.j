.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/adapter/ZanListAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/news/ui/adapter/ZanListAdapter$1
.inner class private ViewHolder inner com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder outer com/nd/android/u/news/ui/adapter/ZanListAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mRow' I

.field private 'mUserList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;"

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mRow I
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
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
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mContext Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/news/R$layout/zan_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/<init>(Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;Lcom/nd/android/u/news/ui/adapter/ZanListAdapter$1;)V
astore 3
aload 2
getstatic com/nd/android/u/news/R$id/iv_zan_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 4
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 5
aload 5
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mRow I
iconst_1
iadd
bipush 15
imul
isub
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mRow I
idiv
putfield android/view/ViewGroup$LayoutParams/width I
aload 5
aload 5
getfield android/view/ViewGroup$LayoutParams/width I
putfield android/view/ViewGroup$LayoutParams/height I
aload 4
aload 5
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
aload 4
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/setIv(Landroid/widget/ImageView;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
ifnull L2
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnonnull L3
L2:
lconst_0
iconst_3
aload 3
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/getIv()Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/getIv()Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder
astore 3
goto L1
L3:
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
iconst_3
aload 3
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/getIv()Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter$ViewHolder/getIv()Landroid/widget/ImageView;
new com/nd/android/u/news/ui/adapter/ZanListAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/adapter/ZanListAdapter$1/<init>(Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;I)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
.limit locals 6
.limit stack 5
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;)V"
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
ifnonnull L0
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
return
L0:
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter/mUserList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
