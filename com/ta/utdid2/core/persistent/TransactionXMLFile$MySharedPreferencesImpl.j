.bytecode 50.0
.class final synchronized com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
.super java/lang/Object
.implements com/ta/utdid2/core/persistent/MySharedPreferences
.inner class private static final MySharedPreferencesImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile
.inner class public final EditorImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl

.field private static final 'mContent' Ljava/lang/Object;

.field private 'hasChange' Z

.field private final 'mBackupFile' Ljava/io/File;

.field private final 'mFile' Ljava/io/File;

.field private 'mListeners' Ljava/util/WeakHashMap; signature "Ljava/util/WeakHashMap<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;Ljava/lang/Object;>;"

.field private 'mMap' Ljava/util/Map;

.field private final 'mMode' I

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mContent Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method <init>(Ljava/io/File;ILjava/util/Map;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/hasChange Z
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
aload 0
aload 1
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile/access$000(Ljava/io/File;)Ljava/io/File;
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mBackupFile Ljava/io/File;
aload 0
iload 2
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMode I
aload 3
ifnull L0
L1:
aload 0
aload 3
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 0
new java/util/WeakHashMap
dup
invokespecial java/util/WeakHashMap/<init>()V
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mListeners Ljava/util/WeakHashMap;
return
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mListeners Ljava/util/WeakHashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
aload 0
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/writeFileLocked()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/FileNotFoundException from L3 to L4 using L5
L0:
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdir()Z
ifne L3
aconst_null
areturn
L3:
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L4:
aload 1
areturn
L5:
astore 1
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method private writeFileLocked()Z
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mBackupFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L6
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mBackupFile Ljava/io/File;
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L0
L7:
iconst_0
ireturn
L6:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L0:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
astore 1
L1:
aload 1
ifnull L7
L4:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
aload 1
invokevirtual java/io/FileOutputStream/close()V
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mBackupFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L5:
iconst_1
ireturn
L3:
astore 1
L8:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L7
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
iconst_0
ireturn
L2:
astore 1
goto L8
.limit locals 2
.limit stack 2
.end method

.method public final checkFile()Z
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
ifnull L0
new java/io/File
dup
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public final contains(Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
istore 2
aload 0
monitorexit
L1:
iload 2
ireturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
new com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl
dup
aload 0
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/<init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public final getAll()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;*>;"
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
new java/util/HashMap
dup
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
invokespecial java/util/HashMap/<init>(Ljava/util/Map;)V
astore 1
aload 0
monitorexit
L1:
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Boolean
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
istore 2
L4:
aload 0
monitorexit
L5:
iload 2
ireturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final getFloat(Ljava/lang/String;F)F
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Float
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual java/lang/Float/floatValue()F
fstore 2
L4:
aload 0
monitorexit
L5:
fload 2
freturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final getInt(Ljava/lang/String;I)I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual java/lang/Integer/intValue()I
istore 2
L4:
aload 0
monitorexit
L5:
iload 2
ireturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final getLong(Ljava/lang/String;J)J
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual java/lang/Long/longValue()J
lstore 2
L4:
aload 0
monitorexit
L5:
lload 2
lreturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
L1:
aload 1
ifnull L5
L3:
aload 0
monitorexit
L4:
aload 1
areturn
L5:
aload 2
astore 1
goto L3
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public final hasFileChanged()Z
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/hasChange Z
istore 1
aload 0
monitorexit
L1:
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mListeners Ljava/util/WeakHashMap;
aload 1
getstatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mContent Ljava/lang/Object;
invokevirtual java/util/WeakHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
monitorexit
L1:
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final replace(Ljava/util/Map;)V
.catch all from L0 to L1 using L2
aload 1
ifnull L1
aload 0
monitorenter
L0:
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mMap Ljava/util/Map;
aload 0
monitorexit
L1:
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public final setHasChange(Z)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/hasChange Z
aload 0
monitorexit
L1:
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/mListeners Ljava/util/WeakHashMap;
aload 1
invokevirtual java/util/WeakHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
monitorexit
L1:
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
