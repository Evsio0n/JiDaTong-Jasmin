.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$ShareTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private ShareTask inner com/nd/album/ui/widget/SinglePictureView$ShareTask outer com/nd/album/ui/widget/SinglePictureView

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method private <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$ShareTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/album/ui/widget/SinglePictureView;Lcom/nd/album/ui/widget/SinglePictureView$1;)V
aload 0
aload 1
invokespecial com/nd/album/ui/widget/SinglePictureView$ShareTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$ShareTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$100(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$ShareTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$100(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L0:
aload 1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$ShareTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$200(Lcom/nd/album/ui/widget/SinglePictureView;)J
invokestatic com/nd/android/u/AlbumCallOtherModel/sharePic(Ljava/util/ArrayList;J)V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method
