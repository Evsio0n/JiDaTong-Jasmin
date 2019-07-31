.bytecode 50.0
.class public synchronized com/nd/teamfile/helper/FileCategoryHelper
.super java/lang/Object
.inner class public static final enum FileCategory inner com/nd/teamfile/helper/FileCategoryHelper$FileCategory outer com/nd/teamfile/helper/FileCategoryHelper

.field private static 'APK_EXT' Ljava/lang/String;

.method static <clinit>()V
ldc "apk"
putstatic com/nd/teamfile/helper/FileCategoryHelper/APK_EXT Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCategoryFromPath(Ljava/lang/String;)Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
aload 0
invokestatic com/nd/teamfile/sdk/type/MediaFile/getFileType(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
iload 1
invokestatic com/nd/teamfile/sdk/type/MediaFile/isVideoFileType(I)Z
ifeq L1
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Video Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
areturn
L1:
iload 1
invokestatic com/nd/teamfile/sdk/type/MediaFile/isImageFileType(I)Z
ifeq L0
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Picture Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
areturn
L0:
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
ifge L2
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Other Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
areturn
L2:
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
getstatic com/nd/teamfile/helper/FileCategoryHelper/APK_EXT Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Apk Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
areturn
L3:
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Other Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
areturn
.limit locals 2
.limit stack 3
.end method
