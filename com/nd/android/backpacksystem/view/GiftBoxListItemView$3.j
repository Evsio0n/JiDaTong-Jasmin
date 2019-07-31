.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/view/GiftBoxListItemView$3
.super java/lang/Object
.implements com/common/android/utils/download/progress_updownload/IProgressListener
.enclosing method com/nd/android/backpacksystem/view/GiftBoxListItemView
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$3

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;

.method <init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method private hide()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$400(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$1200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$1100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onFail(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$3/hide()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$400(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$1000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/record_file_down_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onStart()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$1000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$3/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$1100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onSuccess(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$3/hide()V
aload 1
ldc ".temp"
ldc ".amr"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 2
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
return
.limit locals 3
.limit stack 4
.end method
