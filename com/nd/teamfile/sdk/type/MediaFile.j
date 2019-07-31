.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/MediaFile
.super java/lang/Object

.field private static final 'FILE_TYPE_3GPP' I = 23


.field private static final 'FILE_TYPE_3GPP2' I = 24


.field private static final 'FILE_TYPE_AAC' I = 9


.field private static final 'FILE_TYPE_AMR' I = 4


.field private static final 'FILE_TYPE_ASF' I = 26


.field private static final 'FILE_TYPE_AVI' I = 29


.field private static final 'FILE_TYPE_AWB' I = 5


.field private static final 'FILE_TYPE_BMP' I = 34


.field private static final 'FILE_TYPE_FLAC' I = 11


.field private static final 'FILE_TYPE_GIF' I = 32


.field private static final 'FILE_TYPE_JPEG' I = 31


.field private static final 'FILE_TYPE_M4A' I = 2


.field private static final 'FILE_TYPE_M4V' I = 22


.field private static final 'FILE_TYPE_MKA' I = 10


.field private static final 'FILE_TYPE_MKV' I = 27


.field private static final 'FILE_TYPE_MP2TS' I = 28


.field private static final 'FILE_TYPE_MP3' I = 1


.field private static final 'FILE_TYPE_MP4' I = 21


.field private static final 'FILE_TYPE_OGA' I = 8


.field private static final 'FILE_TYPE_OGG' I = 7


.field private static final 'FILE_TYPE_PNG' I = 33


.field private static final 'FILE_TYPE_WAV' I = 3


.field private static final 'FILE_TYPE_WBMP' I = 35


.field private static final 'FILE_TYPE_WEBM' I = 30


.field private static final 'FILE_TYPE_WEBP' I = 36


.field private static final 'FILE_TYPE_WMA' I = 6


.field private static final 'FILE_TYPE_WMV' I = 25


.field private static final 'FIRST_AUDIO_FILE_TYPE' I = 1


.field private static final 'FIRST_IMAGE_FILE_TYPE' I = 31


.field private static final 'FIRST_VIDEO_FILE_TYPE' I = 21


.field private static final 'LAST_AUDIO_FILE_TYPE' I = 11


.field private static final 'LAST_IMAGE_FILE_TYPE' I = 36


.field private static final 'LAST_VIDEO_FILE_TYPE' I = 30


.field private static 'sFileTypeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/teamfile/sdk/type/MediaFile/sFileTypeMap Ljava/util/HashMap;
ldc "MP3"
iconst_1
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "M4A"
iconst_2
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WAV"
iconst_3
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "AMR"
iconst_4
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "AWB"
iconst_5
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "AWB"
iconst_5
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WMA"
bipush 6
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "OGG"
bipush 7
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "OGA"
bipush 8
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "AAC"
bipush 9
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "MKA"
bipush 10
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "MPEG"
bipush 21
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "MPG"
bipush 21
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "MP4"
bipush 21
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "M4V"
bipush 22
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "3GP"
bipush 23
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "3GPP"
bipush 23
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "3G2"
bipush 24
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "3GPP2"
bipush 24
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WMV"
bipush 25
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "ASF"
bipush 26
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "MKV"
bipush 27
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WEBM"
bipush 30
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "TS"
bipush 28
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "AVI"
bipush 29
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "JPG"
bipush 31
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "JPEG"
bipush 31
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "GIF"
bipush 32
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "PNG"
bipush 33
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "BMP"
bipush 34
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WBMP"
bipush 35
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
ldc "WEBP"
bipush 36
invokestatic com/nd/teamfile/sdk/type/MediaFile/addFileType(Ljava/lang/String;I)V
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static addFileType(Ljava/lang/String;I)V
getstatic com/nd/teamfile/sdk/type/MediaFile/sFileTypeMap Ljava/util/HashMap;
aload 0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static getFileType(Ljava/lang/String;)I
aload 0
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
ifge L0
L1:
iconst_m1
ireturn
L0:
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 2
getstatic com/nd/teamfile/sdk/type/MediaFile/sFileTypeMap Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L1
getstatic com/nd/teamfile/sdk/type/MediaFile/sFileTypeMap Ljava/util/HashMap;
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isAudioFileType(I)Z
iload 0
iconst_1
if_icmplt L0
iload 0
bipush 11
if_icmpgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isImageFileType(I)Z
iload 0
bipush 31
if_icmplt L0
iload 0
bipush 36
if_icmpgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isVideoFileType(I)Z
iload 0
bipush 21
if_icmplt L0
iload 0
bipush 30
if_icmpgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
