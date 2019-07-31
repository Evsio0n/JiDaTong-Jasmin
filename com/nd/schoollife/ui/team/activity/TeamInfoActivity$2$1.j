.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/listener/ImageLoadingListener
.enclosing method com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/onProcessingPostExecute(Ljava/lang/Object;)V
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2
.inner class inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1

.field final synthetic 'this$1' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;

.method <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1/this$1 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1/this$1 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 3
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$300(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Landroid/graphics/Bitmap;)V
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1/this$1 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$drawable/ic_community_header I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2$1/this$1 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$2;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 1
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$300(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Landroid/graphics/Bitmap;)V
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
return
.limit locals 3
.limit stack 0
.end method
