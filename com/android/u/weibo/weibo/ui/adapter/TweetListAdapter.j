.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
.super com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/<init>(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getItemViewType(I)I
iconst_4
if_icmpne L0
aload 2
ifnonnull L1
new com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
dup
invokespecial com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/<init>()V
astore 6
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/weibo_list_rank_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 6
aload 2
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
aload 6
aload 2
getstatic com/android/u/weibo/R$id/avatar_frame I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgFrame Landroid/widget/ImageView;
aload 6
aload 2
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 6
aload 2
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 6
aload 2
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 2
getstatic com/android/u/weibo/R$id/attachment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 3
aload 3
getstatic com/android/u/weibo/R$layout/image_stub I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 3
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 3
aload 3
bipush 20
bipush 20
bipush 10
bipush 20
invokevirtual android/view/View/setPadding(IIII)V
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/rank_weibo_face_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/view/View/setBackgroundColor(I)V
aload 6
aload 3
getstatic com/android/u/weibo/R$id/img_grid_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WrapContentGridView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setSelector(Landroid/graphics/drawable/Drawable;)V
aload 2
aload 6
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
new com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter
dup
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/<init>(Landroid/content/Context;)V
astore 3
aload 2
getstatic com/android/u/weibo/R$id/tag_first I
aload 3
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
L2:
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 7
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
iconst_0
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;IZLandroid/widget/ImageView;)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnonnull L3
iconst_0
istore 1
L4:
aload 3
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_width I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 4
aload 3
fload 4
f2i
fload 4
f2i
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/setImgSize(II)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 3
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;)V
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/avatar_width I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 5
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setNumColumns(I)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 1
i2f
fload 4
fmul
iload 1
iconst_1
isub
i2f
fload 5
fmul
fadd
f2i
putfield android/view/ViewGroup$LayoutParams/width I
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 15
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setHorizontalSpacing(I)V
aload 6
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 2
areturn
L1:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
astore 6
aload 2
getstatic com/android/u/weibo/R$id/tag_first I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter
astore 3
goto L2
L3:
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
istore 1
goto L4
L0:
aload 0
iload 1
aload 2
aload 3
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 8
.limit stack 5
.end method
