.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/ConfigFile
.super java/lang/Object

.field private static final 'ConfigFile' Ljava/lang/String; = "config.cfg"

.field private static final 'IdentifyKey' Ljava/lang/String; = "identify_id"

.field private static final 'SNSData' Ljava/lang/String; = "snsdata"

.field private static final 'SNSSupportKey' Ljava/lang/String; = "SNSSupport"

.field private static 'cfg' Lcom/nd/rj/common/microblogging/ConfigFile;

.field private 'mCfgJson' Lorg/json/JSONObject;

.field private 'mCtx' Landroid/content/Context;

.field private 'mFile' Ljava/io/File;

.method public <init>(Landroid/content/Context;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/ConfigFile/mCtx Landroid/content/Context;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/ConfigFile/getSNSDataPath(Ljava/lang/StringBuffer;)V
aload 1
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "config.cfg"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
new java/io/File
dup
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/rj/common/microblogging/ConfigFile/mFile Ljava/io/File;
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L3
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mFile Ljava/io/File;
invokestatic com/nd/rj/common/microblogging/help/FileFun/readStrFromFile(Ljava/io/File;)Ljava/lang/String;
astore 1
L0:
aload 0
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
putfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
L3:
aload 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
putfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
return
.limit locals 2
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
getstatic com/nd/rj/common/microblogging/ConfigFile/cfg Lcom/nd/rj/common/microblogging/ConfigFile;
ifnonnull L0
new com/nd/rj/common/microblogging/ConfigFile
dup
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/microblogging/ConfigFile/cfg Lcom/nd/rj/common/microblogging/ConfigFile;
L0:
getstatic com/nd/rj/common/microblogging/ConfigFile/cfg Lcom/nd/rj/common/microblogging/ConfigFile;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getNewIdentifyID()Ljava/lang/String;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
ldc "-"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private readIdentifyID()Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
ldc ""
astore 2
aload 2
astore 1
L0:
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "identify_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
L1:
aload 2
astore 1
L3:
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "identify_id"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
areturn
L4:
aload 2
astore 1
L5:
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/getNewIdentifyID()Ljava/lang/String;
astore 2
L6:
aload 2
astore 1
L7:
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "identify_id"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
aload 2
astore 1
L9:
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/saveToFile()V
L10:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private saveToFile()V
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ifnull L0
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mFile Ljava/io/File;
invokestatic com/nd/rj/common/microblogging/help/FileFun/string2File(Ljava/lang/String;Ljava/io/File;)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public GetSNSSupport()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Object;>;"
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "SNSSupport"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
L0:
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "SNSSupport"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
L1:
iconst_0
istore 1
L6:
iload 1
iload 2
if_icmpge L5
L3:
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/rj/common/microblogging/SNSType
dup
invokespecial com/nd/rj/common/microblogging/SNSType/<init>()V
astore 6
aload 6
aload 5
ldc "snstype"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/rj/common/microblogging/SNSType/snstype I
aload 6
aload 5
ldc "snsname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSType/snsname Ljava/lang/String;
aload 6
aload 5
ldc "logofile"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSType/logofile Ljava/lang/String;
aload 3
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L6
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
L5:
aload 3
areturn
.limit locals 7
.limit stack 3
.end method

.method public SetSNSSupport(Lorg/json/JSONArray;)V
.throws org/json/JSONException
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCfgJson Lorg/json/JSONObject;
ldc "SNSSupport"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/saveToFile()V
return
.limit locals 2
.limit stack 3
.end method

.method public getIdentifyID()Ljava/lang/String;
aload 0
iconst_0
invokevirtual com/nd/rj/common/microblogging/ConfigFile/getIdentifyID(Z)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getIdentifyID(Z)Ljava/lang/String;
iload 1
ifeq L0
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/getNewIdentifyID()Ljava/lang/String;
areturn
L0:
aload 0
invokespecial com/nd/rj/common/microblogging/ConfigFile/readIdentifyID()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getSNSDataPath(Ljava/lang/StringBuffer;)V
aload 1
iconst_0
aload 1
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
getfield com/nd/rj/common/microblogging/ConfigFile/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
invokevirtual java/io/File/getParent()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "snsdata"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new java/io/File
dup
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdir()Z
pop
L0:
return
.limit locals 2
.limit stack 3
.end method
