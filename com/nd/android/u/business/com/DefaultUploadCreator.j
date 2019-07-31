.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/DefaultUploadCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IShareFileCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getShareFileInterface(I)Lcom/nd/android/u/controller/innerInterface/IShareFile;
iload 1
lookupswitch
2 : L0
3 : L1
80 : L1
20480 : L1
20481 : L1
default : L2
L2:
aconst_null
areturn
L1:
new com/nd/android/u/business/com/ShareFileUpload_Audio
dup
invokespecial com/nd/android/u/business/com/ShareFileUpload_Audio/<init>()V
areturn
L0:
new com/nd/android/u/business/com/ShareFileUpload_Image
dup
invokespecial com/nd/android/u/business/com/ShareFileUpload_Image/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method
