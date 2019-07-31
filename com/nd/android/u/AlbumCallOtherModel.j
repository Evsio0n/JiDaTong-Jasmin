.bytecode 50.0
.class public synchronized com/nd/android/u/AlbumCallOtherModel
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static doCropImage(Landroid/content/Context;Ljava/lang/String;III)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 5
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 5
iconst_2
newarray int
dup
iconst_0
iload 2
iastore
dup
iconst_1
iload 3
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32102
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 6
.limit stack 5
.end method

.method public static doModheadSuccess()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 0
aload 0
lconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20059
aload 0
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20059
aload 0
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static doReceivePoints(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92003
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static getOapUserLocal(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10001
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getUserSysAvatarId(J)I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isManager(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10313
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static registerInstallReceiver(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 90009
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static sharePic(Ljava/util/ArrayList;J)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;J)V"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/share_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 30001
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public static toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92014
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static unRegisterInstallReceiver(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 90010
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method
