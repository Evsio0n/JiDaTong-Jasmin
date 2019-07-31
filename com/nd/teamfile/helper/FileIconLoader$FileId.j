.bytecode 50.0
.class public synchronized com/nd/teamfile/helper/FileIconLoader$FileId
.super java/lang/Object
.inner class public static FileId inner com/nd/teamfile/helper/FileIconLoader$FileId outer com/nd/teamfile/helper/FileIconLoader

.field public 'mCategory' Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;

.field public 'mId' J

.field public 'mPath' Ljava/lang/String;

.method public <init>(Ljava/lang/String;JLcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
aload 0
lload 2
putfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
aload 0
aload 4
putfield com/nd/teamfile/helper/FileIconLoader$FileId/mCategory Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
return
.limit locals 5
.limit stack 3
.end method
