.bytecode 50.0
.class synchronized com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity
.inner class inner com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;

.method <init>(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/camera I
if_icmpne L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$000(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openImageCaptureMenu()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/take_picture I
if_icmpne L2
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$000(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openPhotoLibraryMenu()V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/modify_portrait_cancle I
if_icmpne L3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/finish()V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/change_picture I
if_icmpne L4
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$100(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$200(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$300(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$400(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$500(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/access$600(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/check_picture I
if_icmpne L1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/getIntent()Landroid/content/Intent;
ldc "uid"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/getIntent()Landroid/content/Intent;
ldc "MINE"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "url"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
ldc "f640"
invokestatic com/product/android/business/headImage/HeadImageLoader/getFaceUrl(JLjava/lang/String;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 3
ldc "MINE"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/getIntent()Landroid/content/Intent;
ldc "MINE"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
ldc com/product/android/ui/activity/ShowImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;
aload 1
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 6
.end method
