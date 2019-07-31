.bytecode 50.0
.class public synchronized com/ta/utdid2/core/persistent/TransactionXMLFile
.super java/lang/Object
.inner class private static final MySharedPreferencesImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile
.inner class public final EditorImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile

.field private static final 'GLOBAL_COMMIT_LOCK' Ljava/lang/Object;

.field public static final 'MODE_PRIVATE' I = 0


.field public static final 'MODE_WORLD_READABLE' I = 1


.field public static final 'MODE_WORLD_WRITEABLE' I = 2


.field private 'mPreferencesDir' Ljava/io/File;

.field private final 'mSync' Ljava/lang/Object;

.field private 'sSharedPrefs' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/io/File;Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;>;"

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/ta/utdid2/core/persistent/TransactionXMLFile/GLOBAL_COMMIT_LOCK Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putfield com/ta/utdid2/core/persistent/TransactionXMLFile/mSync Ljava/lang/Object;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/ta/utdid2/core/persistent/TransactionXMLFile/sSharedPrefs Ljava/util/HashMap;
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifle L0
aload 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/ta/utdid2/core/persistent/TransactionXMLFile/mPreferencesDir Ljava/io/File;
return
L0:
new java/lang/RuntimeException
dup
ldc "Directory can not be empty"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
aload 0
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile/makeBackupFile(Ljava/io/File;)Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100()Ljava/lang/Object;
getstatic com/ta/utdid2/core/persistent/TransactionXMLFile/GLOBAL_COMMIT_LOCK Ljava/lang/Object;
areturn
.limit locals 0
.limit stack 1
.end method

.method private getPreferencesDir()Ljava/io/File;
.catch all from L0 to L1 using L2
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile/mSync Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile/mPreferencesDir Ljava/io/File;
astore 2
aload 1
monitorexit
L1:
aload 2
areturn
L2:
astore 2
aload 1
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method private getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 0
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile/getPreferencesDir()Ljava/io/File;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".xml"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile/makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
areturn
.limit locals 2
.limit stack 4
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".bak"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
aload 2
getstatic java/io/File/separatorChar C
invokevirtual java/lang/String/indexOf(I)I
ifge L0
new java/io/File
dup
aload 1
aload 2
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
L0:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "File "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " contains a path separator"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 5
.end method

.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch org/xmlpull/v1/XmlPullParserException from L5 to L6 using L7
.catch java/io/FileNotFoundException from L5 to L6 using L8
.catch java/io/IOException from L5 to L6 using L9
.catch java/lang/Exception from L5 to L6 using L10
.catch org/xmlpull/v1/XmlPullParserException from L11 to L12 using L7
.catch java/io/FileNotFoundException from L11 to L12 using L8
.catch java/io/IOException from L11 to L12 using L9
.catch java/lang/Exception from L11 to L12 using L10
.catch org/xmlpull/v1/XmlPullParserException from L13 to L14 using L7
.catch java/io/FileNotFoundException from L13 to L14 using L8
.catch java/io/IOException from L13 to L14 using L9
.catch java/lang/Exception from L13 to L14 using L10
.catch all from L15 to L16 using L17
.catch all from L18 to L19 using L17
.catch java/io/FileNotFoundException from L20 to L21 using L22
.catch java/io/IOException from L20 to L21 using L23
.catch all from L24 to L25 using L17
.catch all from L26 to L27 using L17
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile/getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
astore 12
getstatic com/ta/utdid2/core/persistent/TransactionXMLFile/GLOBAL_COMMIT_LOCK Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile/sSharedPrefs Ljava/util/HashMap;
aload 12
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
astore 7
L1:
aload 7
ifnull L28
L3:
aload 7
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/hasFileChanged()Z
ifne L28
aload 1
monitorexit
L4:
aload 7
areturn
L28:
aload 1
monitorexit
aload 12
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile/makeBackupFile(Ljava/io/File;)Ljava/io/File;
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L29
aload 12
invokevirtual java/io/File/delete()Z
pop
aload 1
aload 12
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
L29:
aload 12
invokevirtual java/io/File/exists()Z
ifeq L30
aload 12
invokevirtual java/io/File/canRead()Z
pop
L30:
aconst_null
astore 8
aconst_null
astore 9
aconst_null
astore 10
aconst_null
astore 11
aconst_null
astore 3
aload 3
astore 1
aload 12
invokevirtual java/io/File/exists()Z
ifeq L14
aload 3
astore 1
aload 12
invokevirtual java/io/File/canRead()Z
ifeq L14
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
aload 11
astore 6
L5:
new java/io/FileInputStream
dup
aload 12
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 13
L6:
aload 8
astore 3
aload 9
astore 4
aload 10
astore 5
aload 11
astore 6
L11:
aload 13
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
astore 1
L12:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
aload 1
astore 6
L13:
aload 13
invokevirtual java/io/FileInputStream/close()V
L14:
getstatic com/ta/utdid2/core/persistent/TransactionXMLFile/GLOBAL_COMMIT_LOCK Ljava/lang/Object;
astore 5
aload 5
monitorenter
aload 7
ifnull L24
L15:
aload 7
aload 1
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/replace(Ljava/util/Map;)V
L16:
aload 7
astore 3
L18:
aload 5
monitorexit
L19:
aload 3
areturn
L17:
astore 1
aload 5
monitorexit
aload 1
athrow
L2:
astore 3
aload 1
monitorexit
aload 3
athrow
L7:
astore 1
L20:
new java/io/FileInputStream
dup
aload 12
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 1
aload 1
invokevirtual java/io/FileInputStream/available()I
newarray byte
astore 4
aload 1
aload 4
invokevirtual java/io/FileInputStream/read([B)I
pop
new java/lang/String
dup
aload 4
iconst_0
aload 4
arraylength
ldc "UTF-8"
invokespecial java/lang/String/<init>([BIILjava/lang/String;)V
pop
L21:
aload 3
astore 1
goto L14
L22:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 3
astore 1
goto L14
L23:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 3
astore 1
goto L14
L8:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 4
astore 1
goto L14
L9:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 5
astore 1
goto L14
L10:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 6
astore 1
goto L14
L24:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile/sSharedPrefs Ljava/util/HashMap;
aload 12
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
astore 4
L25:
aload 4
astore 3
aload 4
ifnonnull L18
L26:
new com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
dup
aload 12
iload 2
aload 1
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/<init>(Ljava/io/File;ILjava/util/Map;)V
astore 3
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile/sSharedPrefs Ljava/util/HashMap;
aload 12
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L27:
goto L18
.limit locals 14
.limit stack 6
.end method
