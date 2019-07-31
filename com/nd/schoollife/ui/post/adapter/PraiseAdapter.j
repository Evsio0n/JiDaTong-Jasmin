.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/adapter/PraiseAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;"
.inner class static synthetic inner com/nd/schoollife/ui/post/adapter/PraiseAdapter$1
.inner class private static Holder inner com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder outer com/nd/schoollife/ui/post/adapter/PraiseAdapter

.field private 'mContext' Landroid/content/Context;

.field protected 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'pib' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field 'scopeType' I

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
iconst_m1
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/scopeType I
aload 0
aload 1
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/mContext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/scopeType I
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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
new com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder
dup
aconst_null
invokespecial com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/<init>(Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter$1;)V
astore 3
aload 0
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/post_praise_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/civ_praise_head I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mHead Lcom/nd/schoollife/ui/common/view/CircleImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_praise_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_praise_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mTime Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
astore 4
aload 4
ifnull L2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 5
aload 3
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mName Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mTime Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter/mContext Landroid/content/Context;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getTimestamp()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 3
getfield com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder/mHead Lcom/nd/schoollife/ui/common/view/CircleImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/post/adapter/PraiseAdapter$Holder
astore 3
goto L1
.limit locals 6
.limit stack 4
.end method

.method protected isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
aload 2
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
