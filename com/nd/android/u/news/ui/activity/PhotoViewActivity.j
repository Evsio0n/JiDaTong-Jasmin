.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/PhotoViewActivity
.super com/nd/android/u/news/ui/activity/base/PhotoBaseActivity

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public executeInUi(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public getDataInBackGround()Ljava/lang/Object;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/setTailGone()V
return
.limit locals 1
.limit stack 1
.end method

.method public initPagerView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/getIntent()Landroid/content/Intent;
ifnonnull L0
return
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/getIntent()Landroid/content/Intent;
ldc "news_pic_info"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/urlList Ljava/util/ArrayList;
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/getIntent()Landroid/content/Intent;
ldc "news_pic_index"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
aload 0
ldc "news"
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/setViewPager(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/setContent(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public loadMore(I)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "news_pic_index"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
aload 0
aload 1
ldc "news_pic_info"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/urlList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/urlList Ljava/util/ArrayList;
ifnull L0
aload 0
ldc "news"
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/setViewPager(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/setContent(I)V
L0:
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
invokevirtual com/nd/android/u/news/ui/activity/PhotoViewActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/getUrlList()Ljava/util/List;
checkcast java/util/ArrayList
putfield com/nd/android/u/news/ui/activity/PhotoViewActivity/urlList Ljava/util/ArrayList;
aload 1
ldc "news_pic_index"
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/picIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "news_pic_info"
aload 0
getfield com/nd/android/u/news/ui/activity/PhotoViewActivity/urlList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setContent(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public setFootViewVisibility()V
return
.limit locals 1
.limit stack 0
.end method
