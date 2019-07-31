.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter
.super android/support/v4/app/FragmentPagerAdapter
.inner class public ImageDetailAdapter inner com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter outer com/nd/album/ui/activity/PictureFragmentActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PictureFragmentActivity;

.method public <init>(Lcom/nd/album/ui/activity/PictureFragmentActivity;Landroid/support/v4/app/FragmentManager;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
aload 0
aload 2
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
ifnull L0
aload 3
instanceof com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment
ifeq L0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
iload 2
invokevirtual android/util/SparseArray/remove(I)V
aload 3
checkcast com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/releaseViewBitmap()V
L0:
aload 0
aload 1
iload 2
aload 3
invokespecial android/support/v4/app/FragmentPagerAdapter/destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
iload 1
invokestatic com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/newInstance(I)Lcom/nd/album/ui/activity/PictureFragmentActivity$ViewFragment;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public hideMenu(I)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ImageDetailAdapter/this$0 Lcom/nd/album/ui/activity/PictureFragmentActivity;
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/album/ui/widget/BaseSingleView
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/nd/album/ui/widget/BaseSingleView/hideMenu()V
return
.limit locals 3
.limit stack 2
.end method
