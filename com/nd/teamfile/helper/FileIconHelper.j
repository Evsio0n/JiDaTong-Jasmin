.bytecode 50.0
.class public synchronized com/nd/teamfile/helper/FileIconHelper
.super java/lang/Object
.inner class static synthetic inner com/nd/teamfile/helper/FileIconHelper$1

.field private static 'fileExtToIcons' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"

.field private 'mIconLoader' Lcom/nd/teamfile/helper/FileIconLoader;

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/teamfile/helper/FileIconHelper/fileExtToIcons Ljava/util/HashMap;
getstatic com/nd/teamfile/R$drawable/file_icon_audio I
istore 0
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "MP3"
aastore
dup
iconst_1
ldc "WMA"
aastore
dup
iconst_2
ldc "WAV"
aastore
dup
iconst_3
ldc "MID"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_video I
istore 0
bipush 9
anewarray java/lang/String
dup
iconst_0
ldc "MP4"
aastore
dup
iconst_1
ldc "WMV"
aastore
dup
iconst_2
ldc "MPEG"
aastore
dup
iconst_3
ldc "M4V"
aastore
dup
iconst_4
ldc "3GP"
aastore
dup
iconst_5
ldc "3GPP"
aastore
dup
bipush 6
ldc "3g2"
aastore
dup
bipush 7
ldc "3gpp2"
aastore
dup
bipush 8
ldc "asf"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_picture I
istore 0
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc "JPG"
aastore
dup
iconst_1
ldc "JPEG"
aastore
dup
iconst_2
ldc "GIF"
aastore
dup
iconst_3
ldc "PNG"
aastore
dup
iconst_4
ldc "BMP"
aastore
dup
iconst_5
ldc "WBMP"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_txt I
istore 0
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "TXT"
aastore
dup
iconst_1
ldc "LOG"
aastore
dup
iconst_2
ldc "XML"
aastore
dup
iconst_3
ldc "INI"
aastore
dup
iconst_4
ldc "LRC"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_word I
istore 0
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "DOC"
aastore
dup
iconst_1
ldc "DOT"
aastore
dup
iconst_2
ldc "DOCX"
aastore
dup
iconst_3
ldc "DOTX"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_excel I
istore 0
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "XLS"
aastore
dup
iconst_1
ldc "XLT"
aastore
dup
iconst_2
ldc "XLSX"
aastore
dup
iconst_3
ldc "XLTX"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_pdf I
istore 0
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc "PPT"
aastore
dup
iconst_1
ldc "POT"
aastore
dup
iconst_2
ldc "PPS"
aastore
dup
iconst_3
ldc "PPTX"
aastore
dup
iconst_4
ldc "POTX"
aastore
dup
iconst_5
ldc "PPSX"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_pdf I
istore 0
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "PDF"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_zip I
istore 0
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "ZIP"
aastore
dup
iconst_1
ldc "RAR"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
getstatic com/nd/teamfile/R$drawable/file_icon_psd I
istore 0
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "PSD"
aastore
iload 0
invokestatic com/nd/teamfile/helper/FileIconHelper/addItem([Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/teamfile/helper/FileIconLoader
dup
aload 1
invokespecial com/nd/teamfile/helper/FileIconLoader/<init>(Landroid/content/Context;)V
putfield com/nd/teamfile/helper/FileIconHelper/mIconLoader Lcom/nd/teamfile/helper/FileIconLoader;
return
.limit locals 2
.limit stack 4
.end method

.method private static addItem([Ljava/lang/String;I)V
aload 0
ifnull L0
aload 0
arraylength
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 0
iload 2
aaload
astore 4
getstatic com/nd/teamfile/helper/FileIconHelper/fileExtToIcons Ljava/util/HashMap;
aload 4
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public static getFileIcon(Ljava/lang/String;)I
getstatic com/nd/teamfile/helper/FileIconHelper/fileExtToIcons Ljava/util/HashMap;
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
astore 0
aload 0
ifnull L0
aload 0
invokevirtual java/lang/Integer/intValue()I
ireturn
L0:
getstatic com/nd/teamfile/R$drawable/file_icon_default I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setIcon(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Landroid/widget/ImageView;)V
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/filePath Ljava/lang/String;
astore 6
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/dbId J
lstore 4
aload 2
aload 6
invokestatic com/nd/teamfile/util/FileExplorerUtil/getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokestatic com/nd/teamfile/helper/FileIconHelper/getFileIcon(Ljava/lang/String;)I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 6
invokestatic com/nd/teamfile/helper/FileCategoryHelper/getCategoryFromPath(Ljava/lang/String;)Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
astore 1
aload 0
getfield com/nd/teamfile/helper/FileIconHelper/mIconLoader Lcom/nd/teamfile/helper/FileIconLoader;
aload 2
invokevirtual com/nd/teamfile/helper/FileIconLoader/cancelRequest(Landroid/widget/ImageView;)V
getstatic com/nd/teamfile/helper/FileIconHelper$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
aload 1
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
iaload
tableswitch 1
L0
L1
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/teamfile/helper/FileIconHelper/mIconLoader Lcom/nd/teamfile/helper/FileIconLoader;
aload 2
aload 6
lload 4
aload 1
invokevirtual com/nd/teamfile/helper/FileIconLoader/loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
pop
return
L1:
aload 0
getfield com/nd/teamfile/helper/FileIconHelper/mIconLoader Lcom/nd/teamfile/helper/FileIconLoader;
aload 2
aload 6
lload 4
aload 1
invokevirtual com/nd/teamfile/helper/FileIconLoader/loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
ifne L2
aload 1
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Picture Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
if_acmpne L3
getstatic com/nd/teamfile/R$drawable/file_icon_picture I
istore 3
L4:
aload 2
iload 3
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L3:
getstatic com/nd/teamfile/R$drawable/file_icon_video I
istore 3
goto L4
.limit locals 7
.limit stack 6
.end method
