.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment
.super android/support/v4/app/Fragment
.inner class public static ViewFragment inner com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment outer com/nd/album/ui/activity/PictureFragmentActivity

.field private 'mPosition' I

.field private 'mView' Lcom/nd/album/ui/widget/BaseSingleView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
return
.limit locals 1
.limit stack 2
.end method

.method public static newInstance(I)Lcom/nd/album/ui/activity/PictureFragmentActivity$ViewFragment;
new com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment
dup
invokespecial com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "position"
iload 0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public hideMenu()V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/hideMenu()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "position"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
L1:
ldc "PictureFragmentActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onCreate "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L0:
aload 0
iconst_0
putfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
goto L1
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
checkcast com/nd/album/ui/activity/PictureFragmentActivity
astore 3
aload 2
ifnull L0
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
ifnonnull L1
L0:
aconst_null
areturn
L1:
aconst_null
astore 1
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
if_icmple L2
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
astore 1
L2:
aload 1
ifnull L0
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$200(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Z
istore 5
iload 5
istore 4
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$200(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Z
ifne L3
iload 5
istore 4
aload 1
ifnull L3
iload 5
istore 4
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
lconst_0
lcmp
ifeq L3
iload 5
istore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
aload 1
invokevirtual com/product/android/commonInterface/album/Image/getCreateUid()J
lcmp
ifne L3
iconst_1
istore 4
L3:
aload 0
new com/nd/album/ui/widget/SinglePictureView
dup
aload 0
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$100(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Ljava/util/ArrayList;
iload 4
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$300(Lcom/nd/album/ui/activity/PictureFragmentActivity;)J
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$400(Lcom/nd/album/ui/activity/PictureFragmentActivity;)I
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$500(Lcom/nd/album/ui/activity/PictureFragmentActivity;)J
invokespecial com/nd/album/ui/widget/SinglePictureView/<init>(Landroid/app/Activity;Lcom/product/android/commonInterface/album/Image;ILjava/util/ArrayList;ZJIJ)V
putfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
aload 3
invokestatic com/nd/album/ui/activity/PictureFragmentActivity/access$000(Lcom/nd/album/ui/activity/PictureFragmentActivity;)Landroid/util/SparseArray;
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mPosition I
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
areturn
.limit locals 6
.limit stack 13
.end method

.method public releaseViewBitmap()V
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/releaseBitmap()V
aload 0
aconst_null
putfield com/nd/album/ui/activity/PictureFragmentActivity$ViewFragment/mView Lcom/nd/album/ui/widget/BaseSingleView;
L0:
return
.limit locals 1
.limit stack 2
.end method
