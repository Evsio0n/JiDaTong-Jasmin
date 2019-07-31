.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/view/GiftBoxListItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/backpacksystem/view/GiftBoxListItemView
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;

.method <init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/backpacksystem/R$id/llGiftRecord I
if_icmpne L5
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Z
ifeq L6
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
L7:
return
L6:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/io/File
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
aload 1
ldc ".amr"
invokestatic com/nd/android/backpacksystem/helper/Utils/getStorePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$400(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$302(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
pop
aload 3
invokevirtual java/io/File/exists()Z
ifeq L8
L0:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 3
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$500(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$600(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
iconst_1
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$002(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Z)Z
pop
L1:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Z
ifeq L5
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$300(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
L5:
iload 2
getstatic com/nd/android/backpacksystem/R$id/btnThanks I
if_icmpne L9
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 1
aload 1
ifnull L9
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$900(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/product/android/commonInterface/contact/OapUserSimple;
aload 1
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/toFlowerThankActivity(Landroid/app/Activity;Lcom/product/android/commonInterface/contact/OapUserSimple;Lcom/nd/android/backpacksystem/data/BaseItemProperty;)V
L9:
iload 2
getstatic com/nd/android/backpacksystem/R$id/btnInReturn I
if_icmpne L7
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L10
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/network_error_to_set_network I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
return
L2:
astore 1
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
iconst_0
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$002(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Z)Z
pop
goto L1
L3:
astore 1
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
iconst_0
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$002(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Z)Z
pop
goto L1
L4:
astore 1
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
iconst_0
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$002(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Z)Z
pop
goto L1
L8:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L11
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/network_error_to_set_network I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
return
L11:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
aload 1
ldc ".temp"
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$700(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new com/common/android/utils/download/progress_updownload/ProgressDownload
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$800(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/<init>(Lcom/common/android/utils/download/progress_updownload/IProgressListener;)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/startDownload(Ljava/lang/String;Ljava/io/File;)V
goto L5
L10:
new android/content/Intent
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
ldc com/nd/android/backpacksystem/activity/MyGiftSingleActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "fragment_type"
sipush 259
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "user_id"
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$900(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/product/android/commonInterface/contact/OapUserSimple;
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$1/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 5
.end method
