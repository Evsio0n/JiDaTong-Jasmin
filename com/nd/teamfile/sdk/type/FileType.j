.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/FileType
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.inner class inner com/nd/teamfile/sdk/type/FileType$1
.inner class public static final enum MIME_SOURCE inner com/nd/teamfile/sdk/type/FileType$MIME_SOURCE outer com/nd/teamfile/sdk/type/FileType

.field private final 'MIME_MapTable' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;>;"

.field private 'file' Ljava/io/File;

.field private 'mimeSource' Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;

.field private 'name' Ljava/lang/String;

.method public <init>(Ljava/io/File;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/teamfile/sdk/type/FileType$1
dup
aload 0
invokespecial com/nd/teamfile/sdk/type/FileType$1/<init>(Lcom/nd/teamfile/sdk/type/FileType;)V
putfield com/nd/teamfile/sdk/type/FileType/MIME_MapTable Ljava/util/HashMap;
aload 0
aconst_null
putfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
aload 0
invokespecial com/nd/teamfile/sdk/type/FileType/initMIME()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/teamfile/sdk/type/FileType$1
dup
aload 0
invokespecial com/nd/teamfile/sdk/type/FileType$1/<init>(Lcom/nd/teamfile/sdk/type/FileType;)V
putfield com/nd/teamfile/sdk/type/FileType/MIME_MapTable Ljava/util/HashMap;
aload 0
aconst_null
putfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/FileType/name Ljava/lang/String;
aload 0
invokespecial com/nd/teamfile/sdk/type/FileType/initMIME()V
return
.limit locals 2
.limit stack 4
.end method

.method private initMIME()V
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
ifnonnull L0
aload 0
getfield com/nd/teamfile/sdk/type/FileType/name Ljava/lang/String;
astore 2
L1:
aload 2
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
ifge L2
L3:
return
L0:
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 2
goto L1
L2:
aload 2
iload 1
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 2
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
aload 0
getfield com/nd/teamfile/sdk/type/FileType/MIME_MapTable Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileType$MIME_SOURCE
putfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
return
.limit locals 3
.limit stack 3
.end method

.method public getIntent()Landroid/content/Intent;
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
ifnull L0
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
ifnonnull L1
L0:
aconst_null
areturn
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
getfield com/nd/teamfile/sdk/type/FileType$MIME_SOURCE/mimeType Ljava/lang/String;
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getLargeSourceId()I
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
ifnonnull L0
getstatic com/nd/teamfile/R$drawable/large_unknown_type_icon I
ireturn
L0:
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
getfield com/nd/teamfile/sdk/type/FileType$MIME_SOURCE/largeSourceId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMIMIE()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
ifnonnull L0
aload 0
getfield com/nd/teamfile/sdk/type/FileType/name Ljava/lang/String;
astore 2
L1:
aload 2
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
ifge L2
ldc ""
areturn
L0:
aload 0
getfield com/nd/teamfile/sdk/type/FileType/file Ljava/io/File;
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 2
goto L1
L2:
aload 2
iload 1
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 2
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
ldc ""
areturn
L3:
aload 0
getfield com/nd/teamfile/sdk/type/FileType/MIME_MapTable Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileType$MIME_SOURCE
getfield com/nd/teamfile/sdk/type/FileType$MIME_SOURCE/mimeType Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getSourceId()I
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
ifnonnull L0
getstatic com/nd/teamfile/R$drawable/file I
ireturn
L0:
aload 0
getfield com/nd/teamfile/sdk/type/FileType/mimeSource Lcom/nd/teamfile/sdk/type/FileType$MIME_SOURCE;
getfield com/nd/teamfile/sdk/type/FileType$MIME_SOURCE/sourceId I
ireturn
.limit locals 1
.limit stack 1
.end method
