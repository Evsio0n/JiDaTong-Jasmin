.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/SeniorApplyActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/cloud/activity/SeniorApplyActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
ifnonnull L0
ldc_w 2131493868
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 0
L2
L3
L4
default : L4
L4:
aload 1
getfield android/os/Message/what I
ifeq L1
new java/io/File
dup
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/avatarUri Landroid/net/Uri;
invokestatic com/common/android/utils/ImageUtils/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
new java/io/File
dup
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/showAvatarUri Landroid/net/Uri;
invokestatic com/common/android/utils/ImageUtils/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 1
ifnull L5
aload 1
invokevirtual java/io/File/exists()Z
ifeq L5
aload 1
invokevirtual java/io/File/delete()Z
pop
L5:
aload 2
ifnull L1
aload 2
invokevirtual java/io/File/exists()Z
ifeq L1
aload 2
invokevirtual java/io/File/delete()Z
pop
return
L2:
ldc_w 2131494707
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L4
L3:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
iconst_3
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$1/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
goto L4
.limit locals 3
.limit stack 5
.end method
