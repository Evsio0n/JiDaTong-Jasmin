.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/PictureFragmentActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.inner class public ImageDetailAdapter inner com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter outer com/nd/album/ui/activity/PictureFragmentActivity
.inner class public static ViewFragment inner com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment outer com/nd/album/ui/activity/PictureFragmentActivity

.field private static final 'TAG' Ljava/lang/String; = "PictureFragmentActivity"

.field private 'fgs' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/album/ui/widget/BaseSingleView;>;"

.field private 'mCategory' I

.field private 'mImageAdapter' Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;

.field private 'mImageList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mIndex' I

.field private 'mIsManager' Z

.field private 'mOap_id' J

.field private 'mPager' Lcom/common/android/ui/widget/CompatibleViewPager;

.field private 'mQid' J

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/album/ui/activity/PictureFragmentActivity/fgs Landroid/util/SparseArray;
aload 0
lconst_0
putfield com/nd/album/ui/activity/PictureFragmentActivity/mQid J
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/fgs Landroid/util/SparseArray;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Z
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/album/ui/activity/PictureFragmentActivity;)J
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/album/ui/activity/PictureFragmentActivity;)I
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mCategory I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/album/ui/activity/PictureFragmentActivity;)J
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mQid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public delItem(I)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L0
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/finish()V
L1:
return
L0:
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
ifnull L1
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpeq L0
return
L0:
iload 1
getstatic com/nd/album/ui/widget/SinglePictureView/UPDATE_IMAGEINFO I
if_icmpne L1
aload 3
ldc "index"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 3
ldc "image"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/product/android/commonInterface/album/Image
astore 3
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
iload 1
aload 3
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/notifyDataSetChanged()V
return
L1:
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/fgs Landroid/util/SparseArray;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/album/ui/widget/SinglePictureView
iload 1
iload 2
aload 3
invokevirtual com/nd/album/ui/widget/SinglePictureView/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/album/R$layout/picture_fragment_activity I
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/setContentView(I)V
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "position"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
aload 0
aload 1
ldc "albumlist"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
aload 0
aload 1
ldc "oap_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
aload 0
aload 1
ldc "category"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/album/ui/activity/PictureFragmentActivity/mCategory I
aload 0
aload 1
ldc "qid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/PictureFragmentActivity/mQid J
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
ifnonnull L1
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/finish()V
ldc "PictureFragmentActivity"
ldc "null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L1:
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
lconst_0
lcmp
ifne L2
aload 0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
invokestatic com/nd/android/u/AlbumCallOtherModel/isManager(J)Z
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
L3:
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/album/ui/activity/PictureFragmentActivity/fgs Landroid/util/SparseArray;
aload 0
new com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter
dup
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokespecial com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/<init>(Lcom/nd/album/ui/activity/PictureFragmentActivity;Landroid/support/v4/app/FragmentManager;)V
putfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
aload 0
aload 0
getstatic com/nd/album/R$id/picture_pager I
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/album/ui/activity/PictureFragmentActivity/mPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
return
L2:
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L4
aload 0
iconst_1
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
goto L3
L4:
aload 0
iconst_0
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
goto L3
L0:
aload 0
aload 1
ldc "position"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
aload 0
aload 1
ldc "albumlist"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
aload 0
aload 1
ldc "oap_id"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
aload 0
aload 1
ldc "mIsManager"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
aload 0
aload 1
ldc "qid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/PictureFragmentActivity/mQid J
goto L3
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
aconst_null
putfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
aload 0
aconst_null
putfield com/nd/album/ui/activity/PictureFragmentActivity/fgs Landroid/util/SparseArray;
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
tableswitch 4
L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/finish()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageAdapter Lcom/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter;
iload 1
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/hideMenu(I)V
L0:
aload 0
iload 1
putfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
return
.limit locals 2
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "mIsManager"
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mIsManager Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "oap_id"
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mOap_id J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "albumlist"
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mImageList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "position"
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "qid"
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity/mQid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method
