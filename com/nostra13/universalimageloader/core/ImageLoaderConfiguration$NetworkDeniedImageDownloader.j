.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/download/ImageDownloader
.inner class public static NetworkDeniedImageDownloader inner com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader outer com/nostra13/universalimageloader/core/ImageLoaderConfiguration

.field private static synthetic '$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme' [I

.field private 'downloadSizeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"

.field private 'totalSizeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"

.field private final 'wrappedDownloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private 'writeLog' Z

.method static synthetic $SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
.catch java/lang/NoSuchFieldError from L11 to L13 using L14
getstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme [I
astore 0
aload 0
ifnull L15
aload 0
areturn
L15:
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ASSETS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_5
iastore
L1:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/CONTENT Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_4
iastore
L3:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/DRAWABLE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
bipush 6
iastore
L5:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_3
iastore
L7:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTP Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_1
iastore
L9:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTPS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iconst_2
iastore
L11:
aload 0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/UNKNOWN Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
bipush 7
iastore
L13:
aload 0
putstatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme [I
aload 0
areturn
L14:
astore 1
goto L13
L12:
astore 1
goto L11
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/wrappedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
return
.limit locals 2
.limit stack 3
.end method

.method public getDownloadSize(Ljava/lang/String;)J
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L0
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifle L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
lload 4
lstore 2
lload 4
lconst_0
lcmp
ifgt L0
lconst_0
lstore 2
L0:
lload 2
lreturn
.limit locals 6
.limit stack 4
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
aload 1
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iaload
tableswitch 1
L0
L0
default : L1
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/wrappedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 1
aload 2
aload 3
aload 4
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream; 4
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 5
.limit stack 5
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
invokestatic com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/$SWITCH_TABLE$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
aload 1
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ordinal()I
iaload
tableswitch 1
L0
L0
default : L1
L1:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/wrappedDownloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 1
aload 2
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream; 3
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 4
.limit stack 4
.end method

.method public getTotalSize(Ljava/lang/String;)J
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
lload 4
lstore 2
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifle L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
lload 4
lstore 2
lload 4
lconst_0
lcmp
ifgt L0
lconst_0
lstore 2
L0:
lload 2
lreturn
.limit locals 6
.limit stack 4
.end method

.method public isWriteLog()Z
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/writeLog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public removeEtag(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public removeSizeMap(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L1
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public setDownloadSize(Ljava/lang/String;J)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/downloadSizeMap Ljava/util/HashMap;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public setTotalSize(Ljava/lang/String;J)V
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/totalSizeMap Ljava/util/HashMap;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public setWriteLog(Z)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader/writeLog Z
return
.limit locals 2
.limit stack 2
.end method
