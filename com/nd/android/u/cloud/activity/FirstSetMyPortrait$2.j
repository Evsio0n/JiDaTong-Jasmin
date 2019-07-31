.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/FirstSetMyPortrait$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/FirstSetMyPortrait/createInsertPhotoDialog()V
.inner class inner com/nd/android/u/cloud/activity/FirstSetMyPortrait$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;

.method <init>(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$2/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
iload 2
tableswitch 0
L0
L3
default : L5
L5:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$2/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokestatic com/nd/android/u/cloud/activity/FirstSetMyPortrait/access$000(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openImageCaptureMenu()V
L1:
return
L2:
astore 1
ldc "FirstSetMyPortrait"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$2/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokestatic com/nd/android/u/cloud/activity/FirstSetMyPortrait/access$000(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openPhotoLibraryMenu()V
L4:
return
.limit locals 3
.limit stack 2
.end method
