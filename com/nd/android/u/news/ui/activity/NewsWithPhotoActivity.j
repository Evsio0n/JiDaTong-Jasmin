.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/NewsWithPhotoActivity
.super com/nd/android/u/news/ui/activity/base/PhotoBaseActivity

.field private 'mNewsId' J

.field private 'mNewsInfoBean' Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsId J
return
.limit locals 1
.limit stack 3
.end method

.method private errorExcute(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/String;>;)V"
aload 1
ldc ""
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/get_photonews_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public executeInUi(Ljava/lang/Object;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/urlList Ljava/util/ArrayList;
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/NewsInfoBean
ifeq L0
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isSuccess()Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
ifnull L1
iconst_0
istore 2
L2:
iload 2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L3
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/urlList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getUrl(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L1:
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/urlList Ljava/util/ArrayList;
invokespecial com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/errorExcute(Ljava/util/List;)V
L3:
aload 0
ldc "gallery"
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/setViewPager(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/picIndex I
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/setContent(I)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getFootView()Lcom/nd/android/u/news/ui/view/NewsFootView;
ldc "gallery"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsId J
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setNewsId(Ljava/lang/String;JLcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
L0:
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/urlList Ljava/util/ArrayList;
invokespecial com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/errorExcute(Ljava/util/List;)V
goto L3
.limit locals 3
.limit stack 5
.end method

.method public getDataInBackGround()Ljava/lang/Object;
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getNewsOperator()Lcom/nd/android/forumsdk/operator/INewsOperator;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsId J
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
areturn
.limit locals 1
.limit stack 3
.end method

.method public loadMore(I)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "news_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsId J
L0:
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getFootView()Lcom/nd/android/u/news/ui/view/NewsFootView;
ldc "gallery"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsId J
aconst_null
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setNewsId(Ljava/lang/String;JLcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "news_pic_index"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/picIndex I
aload 0
aload 1
ldc "news_pic_info"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/executeInUi(Ljava/lang/Object;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onRestoreInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
putfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/picIndex I
aload 1
ldc "news_pic_index"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/picIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "news_pic_info"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setContent(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iload 2
iload 1
if_icmpgt L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/tvDate Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc ""
iload 1
iconst_1
iadd
iload 2
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/setNewsContent(Ljava/lang/String;II)V
return
L2:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mNewsInfoBean Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getFileInfo()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
astore 3
aload 0
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getDesc()Ljava/lang/String;
iload 1
iconst_1
iadd
iload 2
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/setNewsContent(Ljava/lang/String;II)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
new java/util/Date
dup
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getCreateTime()J
invokespecial java/util/Date/<init>(J)V
getstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
invokestatic com/product/android/utils/TimeUtils/formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/news_source I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getSource()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/setNewsDate(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 6
.end method

.method public setFootViewVisibility()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/getVisibility()I
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsWithPhotoActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
iconst_4
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
