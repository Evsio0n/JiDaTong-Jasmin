.bytecode 50.0
.class public synchronized com/ta/utdid2/core/persistent/PersistentConfiguration
.super java/lang/Object

.field private static final 'KEY_TIMESTAMP' Ljava/lang/String; = "t"

.field private static final 'KEY_TIMESTAMP2' Ljava/lang/String; = "t2"

.field private 'mCanRead' Z

.field private 'mCanWrite' Z

.field private 'mConfigName' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mEditor' Landroid/content/SharedPreferences$Editor;

.field private 'mFolderName' Ljava/lang/String;

.field private 'mIsLessMode' Z

.field private 'mIsSafety' Z

.field private 'mMyEditor' Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private 'mMySP' Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private 'mSp' Landroid/content/SharedPreferences;

.field private 'mTxf' Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L11
.catch java/lang/Exception from L12 to L13 using L8
.catch java/lang/Exception from L14 to L15 using L8
.catch java/lang/Exception from L16 to L17 using L8
.catch java/lang/Exception from L17 to L18 using L19
.catch java/lang/Exception from L20 to L21 using L22
.catch java/lang/Exception from L23 to L24 using L22
.catch java/lang/Exception from L25 to L26 using L22
.catch java/lang/Exception from L27 to L28 using L22
.catch java/lang/Exception from L29 to L30 using L22
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mFolderName Ljava/lang/String;
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsSafety Z
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanRead Z
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
aload 0
iload 4
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsSafety Z
aload 0
iload 5
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
aload 0
aload 3
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
aload 0
aload 2
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mFolderName Ljava/lang/String;
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
lconst_0
lstore 6
aload 1
ifnull L31
aload 0
aload 1
aload 3
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ldc "t"
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 6
L31:
aconst_null
astore 12
L0:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
astore 13
L1:
aload 13
astore 12
L32:
aload 12
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L33
aload 12
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L34
aload 0
iconst_1
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
aload 0
iconst_1
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanRead Z
L35:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanRead Z
ifne L36
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
ifeq L37
L36:
aload 1
ifnull L37
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L37
aload 0
aload 0
aload 2
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
ifnull L37
L3:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ldc "t"
lconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 8
L4:
iload 5
ifne L16
lload 6
lload 8
lcmp
ifle L38
L6:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L7:
lload 8
lstore 10
lload 6
lstore 8
lload 10
lstore 6
L39:
lload 8
lload 6
lcmp
ifne L40
lload 8
lconst_0
lcmp
ifne L10
lload 6
lconst_0
lcmp
ifne L10
L40:
invokestatic java/lang/System/currentTimeMillis()J
lstore 10
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
ifeq L41
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
ifeq L10
lload 8
lconst_0
lcmp
ifne L10
lload 6
lconst_0
lcmp
ifne L10
L41:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L9
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
aload 1
ldc "t2"
lload 10
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L9:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L10
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
astore 1
aload 1
ldc "t2"
lload 10
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 3
pop
aload 1
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/commit()Z 0
pop
L10:
return
L2:
astore 13
aload 13
invokevirtual java/lang/Exception/printStackTrace()V
goto L32
L34:
aload 12
ldc "mounted_ro"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L33
aload 0
iconst_1
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanRead Z
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
goto L35
L33:
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanRead Z
goto L35
L38:
lload 6
lload 8
lcmp
ifge L42
L12:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
aload 0
aload 1
aload 3
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
L13:
lload 6
lstore 10
lload 8
lstore 6
lload 10
lstore 8
goto L39
L42:
lload 6
lload 8
lcmp
ifne L43
L14:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L15:
lload 6
lstore 10
lload 8
lstore 6
lload 10
lstore 8
goto L39
L16:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ldc "t2"
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 10
L17:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ldc "t2"
lconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 6
L18:
lload 10
lload 6
lcmp
ifge L44
lload 10
lconst_0
lcmp
ifle L44
L20:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L21:
lload 10
lstore 8
goto L39
L44:
lload 10
lload 6
lcmp
ifle L45
lload 6
lconst_0
lcmp
ifle L45
L23:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
aload 0
aload 1
aload 3
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
L24:
lload 10
lstore 8
goto L39
L45:
lload 10
lconst_0
lcmp
ifne L46
lload 6
lconst_0
lcmp
ifle L46
L25:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
aload 0
aload 1
aload 3
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
L26:
lload 10
lstore 8
goto L39
L46:
lload 6
lconst_0
lcmp
ifne L47
lload 10
lconst_0
lcmp
ifle L47
L27:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L28:
lload 10
lstore 8
goto L39
L47:
lload 10
lload 6
lcmp
ifne L30
L29:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 3
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L30:
lload 10
lstore 8
L48:
goto L39
L11:
astore 1
return
L5:
astore 1
lload 6
lstore 8
lconst_0
lstore 6
goto L39
L8:
astore 1
lload 6
lstore 10
lload 8
lstore 6
lload 10
lstore 8
goto L39
L19:
astore 1
lload 8
lstore 6
lload 10
lstore 8
goto L39
L43:
lload 6
lstore 10
lload 8
lstore 6
lload 10
lstore 8
goto L48
L37:
lload 6
lstore 8
lconst_0
lstore 6
goto L39
L22:
astore 1
lload 10
lstore 8
goto L39
.limit locals 14
.limit stack 4
.end method

.method private checkSDCardXMLFile()Z
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/checkFile()Z 0
istore 1
iload 1
ifne L1
aload 0
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/commit()Z
pop
L1:
iload 1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
aload 1
ifnull L0
aload 2
ifnull L0
aload 2
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 2
aload 2
ifnull L0
aload 2
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 1
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getAll()Ljava/util/Map; 0
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 4
aload 4
instanceof java/lang/String
ifeq L3
aload 2
aload 3
aload 4
checkcast java/lang/String
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
goto L1
L3:
aload 4
instanceof java/lang/Integer
ifeq L4
aload 2
aload 3
aload 4
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
goto L1
L4:
aload 4
instanceof java/lang/Long
ifeq L5
aload 2
aload 3
aload 4
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
goto L1
L5:
aload 4
instanceof java/lang/Float
ifeq L6
aload 2
aload 3
aload 4
checkcast java/lang/Float
invokevirtual java/lang/Float/floatValue()F
invokeinterface android/content/SharedPreferences$Editor/putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor; 2
pop
goto L1
L6:
aload 4
instanceof java/lang/Boolean
ifeq L1
aload 2
aload 3
aload 4
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
goto L1
L2:
aload 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
return
.limit locals 5
.limit stack 4
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
aload 1
ifnull L0
aload 2
ifnull L0
aload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
astore 2
aload 2
ifnull L0
aload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
pop
aload 1
invokeinterface android/content/SharedPreferences/getAll()Ljava/util/Map; 0
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 4
aload 4
instanceof java/lang/String
ifeq L3
aload 2
aload 3
aload 4
checkcast java/lang/String
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
goto L1
L3:
aload 4
instanceof java/lang/Integer
ifeq L4
aload 2
aload 3
aload 4
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
goto L1
L4:
aload 4
instanceof java/lang/Long
ifeq L5
aload 2
aload 3
aload 4
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 3
pop
goto L1
L5:
aload 4
instanceof java/lang/Float
ifeq L6
aload 2
aload 3
aload 4
checkcast java/lang/Float
invokevirtual java/lang/Float/floatValue()F
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
goto L1
L6:
aload 4
instanceof java/lang/Boolean
ifeq L1
aload 2
aload 3
aload 4
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
goto L1
L2:
aload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/commit()Z 0
pop
L0:
return
.limit locals 5
.limit stack 4
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
astore 2
aload 2
ifnull L0
new java/io/File
dup
ldc "%s%s%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aastore
dup
iconst_1
getstatic java/io/File/separator Ljava/lang/String;
aastore
dup
iconst_2
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
aload 1
invokevirtual java/io/File/mkdirs()Z
pop
L1:
aload 1
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 7
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/getRootFolder(Ljava/lang/String;)Ljava/io/File;
astore 1
aload 1
ifnull L0
aload 0
new com/ta/utdid2/core/persistent/TransactionXMLFile
dup
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial com/ta/utdid2/core/persistent/TransactionXMLFile/<init>(Ljava/lang/String;)V
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method private initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnonnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mCanWrite Z
ifeq L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnonnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
L1:
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public clear()V
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ldc "t"
lload 1
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ldc "t"
lload 1
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 3
pop
L1:
return
.limit locals 3
.limit stack 4
.end method

.method public commit()Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
iconst_1
istore 2
invokestatic java/lang/System/currentTimeMillis()J
lstore 4
iload 2
istore 1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L6
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
ifne L7
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L7
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ldc "t"
lload 4
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
L7:
iload 2
istore 1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
ifne L6
iconst_0
istore 1
L6:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L8
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
ifnull L8
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
L8:
aconst_null
astore 6
L0:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
astore 7
L1:
aload 7
astore 6
L9:
iload 1
istore 3
aload 6
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L10
iload 1
istore 2
aload 6
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnonnull L12
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mFolderName Ljava/lang/String;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
astore 7
iload 1
istore 2
aload 7
ifnull L11
aload 0
aload 7
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mIsLessMode Z
ifne L13
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
L14:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 0
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
iload 1
istore 2
L11:
aload 6
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L15
iload 2
istore 3
aload 6
ldc "mounted_ro"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
iload 2
istore 3
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L10
L15:
iload 2
istore 3
L3:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
ifnull L10
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L4:
iload 2
istore 3
L10:
iload 3
ireturn
L2:
astore 7
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
goto L9
L13:
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
goto L14
L12:
iload 1
istore 2
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L11
iload 1
istore 2
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/commit()Z 0
ifne L11
iconst_0
istore 2
goto L11
L5:
astore 6
iload 2
ireturn
.limit locals 8
.limit stack 4
.end method

.method public getAll()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;*>;"
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/getAll()Ljava/util/Map; 0
areturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getAll()Ljava/util/Map; 0
areturn
L1:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBoolean(Ljava/lang/String;)Z
iconst_0
istore 2
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 1
iconst_0
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 1
iconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getFloat(Ljava/lang/String;)F
fconst_0
fstore 2
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 1
fconst_0
invokeinterface android/content/SharedPreferences/getFloat(Ljava/lang/String;F)F 2
fstore 2
L1:
fload 2
freturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 1
fconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getFloat(Ljava/lang/String;F)F 2
freturn
.limit locals 3
.limit stack 3
.end method

.method public getInt(Ljava/lang/String;)I
iconst_0
istore 2
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 1
iconst_0
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 1
iconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getInt(Ljava/lang/String;I)I 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getLong(Ljava/lang/String;)J
lconst_0
lstore 2
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 1
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 2
L1:
lload 2
lreturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 1
lconst_0
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 4
.limit stack 4
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/checkSDCardXMLFile()Z
pop
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
aload 1
ldc ""
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 2
areturn
L0:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
aload 1
ldc ""
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public putBoolean(Ljava/lang/String;Z)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
iload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public putFloat(Ljava/lang/String;F)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
fload 2
invokeinterface android/content/SharedPreferences$Editor/putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor; 2
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
fload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public putInt(Ljava/lang/String;I)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
iload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public putLong(Ljava/lang/String;J)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
lload 2
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
lload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 3
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
aload 2
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 2
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public reload()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
ifnull L6
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
ifnull L6
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mContext Landroid/content/Context;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mSp Landroid/content/SharedPreferences;
L6:
aconst_null
astore 1
L0:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L7:
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
aload 1
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 1
ldc "mounted_ro"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
ifnull L4
L3:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
ifnull L4
aload 0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mTxf Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mConfigName Ljava/lang/String;
iconst_0
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile/getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
putfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMySP Lcom/ta/utdid2/core/persistent/MySharedPreferences;
L4:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L7
L5:
astore 1
return
.limit locals 3
.limit stack 4
.end method

.method public remove(Ljava/lang/String;)V
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "t"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/initEditor()V
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
L1:
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
ifnull L0
aload 0
getfield com/ta/utdid2/core/persistent/PersistentConfiguration/mMyEditor Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
aload 1
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor/remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor; 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
