.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/FirstSetMyPortrait$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/FirstSetMyPortrait
.inner class inner com/nd/android/u/cloud/activity/FirstSetMyPortrait$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;

.method <init>(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624546 : L0
2131625260 : L1
2131625277 : L2
2131625278 : L3
default : L4
L4:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/createInsertPhotoDialog()V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokestatic com/nd/android/u/cloud/activity/FirstSetMyPortrait/access$000(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openImageCaptureMenu()V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokestatic com/nd/android/u/cloud/activity/FirstSetMyPortrait/access$000(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openPhotoLibraryMenu()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/this$0 Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;
invokestatic com/nd/android/u/cloud/activity/FirstSetMyPortrait/access$100(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
return
.limit locals 2
.limit stack 1
.end method
