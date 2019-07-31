.bytecode 50.0
.class public synchronized com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAppMenuByAppid(J)Lcom/product/android/commonInterface/main/AppMenu;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 91006
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnonnull L0
aconst_null
areturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/main/AppMenu
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getImageByAlbumId(JII)Ljava/util/List;
.signature "(JII)Ljava/util/List<Lcom/product/android/commonInterface/album/Image;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 7
ldc_w 71002
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnonnull L0
aconst_null
areturn
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
areturn
.limit locals 5
.limit stack 4
.end method

.method public static gotoProfileActivity(Landroid/content/Context;J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32101
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 4
.limit stack 4
.end method
