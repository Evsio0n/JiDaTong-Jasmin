.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/adapter/NewsListAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/nd/android/u/news/ui/adapter/NewsListAdapter$1
.inner class private NewsViewHolder inner com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder outer com/nd/android/u/news/ui/adapter/NewsListAdapter

.field public static final 'NEWS_TYPE_COUNT' I = 2


.field public static final 'NEWS_TYPE_IMAGE' I = 1


.field public static final 'NEWS_TYPE_NORMAL' I = 0


.field protected 'mContext' Landroid/content/Context;

.field protected 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIsFullData' Z

.field private 'mIsShowTopic' Z

.field protected 'mNewsList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsFullData Z
aload 0
iconst_1
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsShowTopic Z
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method private createImageViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;
new com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/<init>(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$1;)V
astore 2
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_heat I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/gv_images I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_news_Topic I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;
new com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/<init>(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$1;)V
astore 2
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tvTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_heat I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_summary I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/NewsSummaryTextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvSummary Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_news_tag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTag Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_news_Topic I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/iv_avator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/ivAvator Landroid/widget/ImageView;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private initImagesNewsData(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/setNewsIsRead(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;Z)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isTopicNews()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsShowTopic Z
ifeq L0
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/topic_news I
invokevirtual android/widget/TextView/setText(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
ifnonnull L2
iconst_0
istore 3
L3:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
iload 3
invokevirtual android/widget/GridView/setNumColumns(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
invokevirtual android/widget/GridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/android/u/news/ui/adapter/NewsItemImageAdapter
astore 5
aload 5
astore 4
aload 5
ifnonnull L4
new com/nd/android/u/news/ui/adapter/NewsItemImageAdapter
dup
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/<init>(Landroid/content/Context;)V
astore 4
L4:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
aload 4
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setClickable(Z)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setPressed(Z)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/gvImages Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setEnabled(Z)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
ifnull L5
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getUrl()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L6
L0:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getHeat()F
fconst_1
fcmpg
ifge L7
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L7:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getHeat()F
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/NewsUtil/formatHeat(FLandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
goto L3
L5:
aload 4
aload 2
invokevirtual com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/setData(Ljava/util/ArrayList;)V
return
.limit locals 6
.limit stack 3
.end method

.method private initNormalNewsData(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getUrl()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/ivAvator Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvSummary Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getSummary()Ljava/lang/String;
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getRelateId()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L3
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTag Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isTopicNews()Z
ifeq L5
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsShowTopic Z
ifeq L5
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/topic_news I
invokevirtual android/widget/TextView/setText(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 2
iconst_0
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/setNewsIsRead(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;Z)V
return
L1:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/ivAvator Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/ivAvator Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
goto L2
L0:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/ivAvator Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
L3:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTag Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTag Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_tag_jgw I
invokevirtual android/widget/TextView/setText(I)V
goto L4
L5:
aload 0
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/setNewsIsRead(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;Z)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTopic Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getHeat()F
fconst_1
fcmpg
ifge L6
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L6:
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvHeat Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getHeat()F
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/NewsUtil/formatHeat(FLandroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 4
.end method

.method private setNewsIsRead(Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;Z)V
iload 2
ifeq L0
aload 1
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/title_unselected_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L0:
aload 1
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/title_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public addDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public clearDatas()V
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsFullData Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
ireturn
L1:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstItem()Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
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

.method public getItemIndex(J)I
iconst_m1
istore 5
iload 5
istore 4
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
iload 5
istore 4
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
iconst_0
istore 3
L1:
iload 5
istore 4
iload 3
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
lload 1
lcmp
ifne L2
iload 3
istore 4
L0:
iload 4
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L1
.limit locals 6
.limit stack 4
.end method

.method public getItemViewType(I)I
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getItemViewType(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Ljava/lang/String;
ldc "gallery"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getItemViewType(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Ljava/lang/String;
aload 1
ifnonnull L0
ldc "news"
areturn
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostType()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getLastItem()Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
astore 5
aload 2
ifnonnull L0
aload 0
aload 5
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getItemViewType(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Ljava/lang/String;
ldc "gallery"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/news_list_image_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
aload 3
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/createImageViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;
astore 2
L2:
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 3
astore 4
aload 2
astore 3
L3:
aload 0
aload 5
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getItemViewType(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Ljava/lang/String;
ldc "gallery"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
aload 5
aload 3
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/initImagesNewsData(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;)V
aload 4
areturn
L1:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/news_list_normal_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
aload 3
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;
astore 2
goto L2
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder
astore 3
aload 2
astore 4
goto L3
L4:
aload 0
aload 5
aload 3
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/initNormalNewsData(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Lcom/nd/android/u/news/ui/adapter/NewsListAdapter$NewsViewHolder;)V
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public getViewTypeCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isShowTopic()Z
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsShowTopic Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mNewsList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsFullData(Z)V
aload 0
iload 1
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsFullData Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsShowTopic(Z)V
aload 0
iload 1
putfield com/nd/android/u/news/ui/adapter/NewsListAdapter/mIsShowTopic Z
return
.limit locals 2
.limit stack 2
.end method
