.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/ImageListActivity
.super com/nd/android/u/news/ui/activity/base/PhotoBaseActivity

.field public static final 'PAGE_SIZE' I = 10


.field private final 'COUNT_FROM_WEB' Ljava/lang/String;

.field private 'albumId' J

.field private 'countFromWeb' I

.field private 'imageList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/album/Image;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/<init>()V
aload 0
ldc "count_from_web"
putfield com/nd/android/u/news/ui/activity/ImageListActivity/COUNT_FROM_WEB Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/activity/ImageListActivity/imageList Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public executeInUi(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 1
instanceof java/util/List
ifeq L0
aload 1
checkcast java/util/List
astore 1
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/imageList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
aload 0
aload 1
invokeinterface java/util/List/size()I 0
putfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
ifne L1
L0:
return
L1:
iconst_0
istore 2
L2:
iload 2
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
if_icmpge L3
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/album/Image
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480AppSid()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
ifne L4
aload 0
ldc "gallery"
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setViewPager(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setContent(I)V
return
L4:
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/addUrlList(Ljava/util/List;)V
return
.limit locals 3
.limit stack 3
.end method

.method public getDataInBackGround()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/albumId J
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
bipush 10
invokestatic com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel/getImageByAlbumId(JII)Ljava/util/List;
areturn
.limit locals 1
.limit stack 4
.end method

.method public loadMore(I)V
iload 1
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/getCount()I
iconst_1
isub
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
bipush 10
if_icmplt L1
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
bipush 10
iadd
putfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/executeTask()V
L0:
return
L1:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/get_album_pic_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
sipush 300
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/getIntent()Landroid/content/Intent;
astore 2
aload 0
aload 2
ldc "album_key"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/ImageListActivity/albumId J
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 2
ldc "album_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setActivityTitle(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setTailGone()V
return
.limit locals 3
.limit stack 5
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "news_pic_index"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
aload 0
aload 1
ldc "news_pic_info"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
aload 0
aload 1
ldc "count_from_web"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
aload 0
ldc "gallery"
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setViewPager(Ljava/lang/String;)V
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
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
putfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/getUrlList()Ljava/util/List;
checkcast java/util/ArrayList
putfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
aload 1
ldc "news_pic_index"
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/picIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "news_pic_info"
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/urlList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "count_from_web"
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/countFromWeb I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setContent(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/imageList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/imageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iload 2
iload 1
if_icmpgt L1
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/tvDate Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc ""
iload 1
iconst_1
iadd
iload 2
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setNewsContent(Ljava/lang/String;II)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/ImageListActivity/imageList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/album/Image
astore 3
aload 0
aload 3
invokevirtual com/product/android/commonInterface/album/Image/getPicDesc()Ljava/lang/String;
iload 1
iconst_1
iadd
aload 3
invokevirtual com/product/android/commonInterface/album/Image/getTotalSize()I
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setNewsContent(Ljava/lang/String;II)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
new java/util/Date
dup
aload 3
invokevirtual com/product/android/commonInterface/album/Image/getCreateDt()J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
getstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
invokestatic com/product/android/utils/TimeUtils/formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/product/android/commonInterface/album/Image/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/ImageListActivity/setNewsDate(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 8
.end method

.method public setFootViewVisibility()V
return
.limit locals 1
.limit stack 0
.end method
